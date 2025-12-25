import csv
import io

from fastapi import APIRouter, Depends, HTTPException, UploadFile
from sqlalchemy import func, or_, select, text
from sqlalchemy.ext.asyncio import AsyncSession
from src.database.database import get_session
from src.database.models import PhotoOrm, ProductOrm, PropertyOrm
from src.schemas.product_schema import ProductViewSchema

api_router = APIRouter()


@api_router.get("/healthcheck")
async def index(
    session: AsyncSession = Depends(get_session),
):
    try:
        await session.execute(select(ProductOrm))
        return {"detail": "ok :)"}
    except Exception as e:
        print(e)
        return {"detail": "error"}


@api_router.post("/product/import")
async def api_product_import(
    file: UploadFile,
    session: AsyncSession = Depends(get_session),
):
    if file.content_type not in {
        "text/csv",
        "application/csv",
        "application/vnd.ms-excel",
    }:
        raise HTTPException(
            status_code=400,
            detail="incorrect file content type",
        )

    try:
        await session.execute(
            text(
                "CREATE UNIQUE INDEX IF NOT EXISTS uq_product_url_idx ON product (url)"
            )
        )
        await session.commit()
    except Exception:
        await session.rollback()

    raw = await file.read()

    try:
        decoded = raw.decode("utf-8-sig")
    except UnicodeDecodeError:
        decoded = raw.decode("utf-8")

    reader = csv.DictReader(io.StringIO(decoded))

    COL_NAME = "Название"
    COL_URL = "Ссылка на продукт"
    COL_PRICE = "Цена"
    COL_PHOTO = "Фотография"
    col_map = {
        "weight": "Вес",
        "work_time": "Время работы",
        "charge_time": "Время зарядки",
        "lenght_of_work": "Длина хода",
        "battery_capacity": "Емкость батареи",
        "voltage": "Рабочее напряжение",
        "model": "Модель",
        "material": "Материал",
        "power": "Мощность",
        "motor": "Мотор",
        "manufactured": "Производство",
        "warranty": "Гарантия",
        "rpm": "Об / мин",
    }

    def parse_cost(v: str | None) -> float | None:
        if not v:
            return None
        s = (
            str(v)
            .strip()
            .replace(" ", "")
            .replace("\xa0", "")
            .replace(",", ".")
        )
        out = []
        dot_used = False
        for ch in s:
            if ch.isdigit():
                out.append(ch)
            elif ch == "." and not dot_used:
                out.append(ch)
                dot_used = True
        try:
            return float("".join(out)) if out else None
        except ValueError:
            return None

    inserted_products = 0
    skipped_products = 0
    inserted_props = 0
    inserted_photos = 0

    for row in reader:
        url = (row.get(COL_URL) or "").strip()
        name = (row.get(COL_NAME) or "").strip()
        photo_url = (row.get(COL_PHOTO) or "").strip()
        cost = parse_cost(row.get(COL_PRICE))

        if all(x in [None, ""] for x in [name, cost]):
            skipped_products += 1
            continue

        res = await session.execute(
            select(ProductOrm).where(ProductOrm.url == url)
        )
        product = res.scalars().first()

        if product is None:
            product = ProductOrm(name=name or None, url=url)
            session.add(product)
            await session.flush()
            inserted_products += 1
        else:
            skipped_products += 1

        if photo_url:
            exists_photo = await session.execute(
                select(PhotoOrm).where(
                    PhotoOrm.product_id == product.id,
                    PhotoOrm.url == photo_url,
                )
            )
            if exists_photo.scalars().first() is None:
                session.add(PhotoOrm(product_id=product.id, url=photo_url))
                inserted_photos += 1

        prop_kwargs = {"product_id": product.id, "cost": cost}

        for orm_field, csv_col in col_map.items():
            val = row.get(csv_col)
            if val is not None and val != "":
                prop_kwargs[orm_field] = val

        existing_prop = (
            await session.execute(
                select(PropertyOrm).where(PropertyOrm.product_id == product.id)
            )
        ).scalar()

        if existing_prop is None:
            session.add(PropertyOrm(**prop_kwargs))
            inserted_props += 1

    await session.commit()

    return {
        "inserted_products": inserted_products,
        "skipped_products": skipped_products,
        "inserted_properties": inserted_props,
        "inserted_photos": inserted_photos,
    }


@api_router.get("/product/get")
async def api_product_get(
    q: str | None = None,
    page: int = 0,
    page_size: int = 0,
    session: AsyncSession = Depends(get_session),
) -> ProductViewSchema:
    stmt = (
        select(
            ProductOrm.id,
            ProductOrm.name,
            ProductOrm.url.label("product_url"),
            PhotoOrm.url.label("photo_url"),
            PropertyOrm.cost,
            PropertyOrm.weight,
            PropertyOrm.work_time,
            PropertyOrm.charge_time,
            PropertyOrm.lenght_of_work,
            PropertyOrm.battery_capacity,
            PropertyOrm.voltage,
            PropertyOrm.model,
            PropertyOrm.material,
            PropertyOrm.power,
            PropertyOrm.motor,
            PropertyOrm.manufactured,
            PropertyOrm.warranty,
            PropertyOrm.rpm,
        )
        .join(
            PhotoOrm,
            PhotoOrm.product_id == ProductOrm.id,
            isouter=True,
        )
        .join(
            PropertyOrm,
            PropertyOrm.product_id == ProductOrm.id,
            isouter=True,
        )
        .order_by(PropertyOrm.cost.desc(), ProductOrm.name)
    )

    if q:
        search_query = f"%{q.lower().strip()}%"

        stmt = stmt.where(
            or_(
                func.lower(ProductOrm.name).ilike(search_query),
            )
        )

    result = (await session.execute(stmt)).mappings().all()

    return {
        "count": len(result),
        "result": (
            result[page * page_size : (page + 1) * page_size]
            if page_size != 0
            else result
        ),
    }
