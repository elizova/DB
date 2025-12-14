import asyncio
import re
from datetime import datetime
from typing import List, Optional

from playwright.async_api import Page, async_playwright
from sqlalchemy import (
    Column,
    DateTime,
    Float,
    Integer,
    String,
    Text,
    create_engine,
)
from sqlalchemy.orm import declarative_base, sessionmaker

# Настройки базы данных
DATABASE_URL = "postgresql://postgres:postgres@localhost:8051/postgres"

# Создание базы данных
Base = declarative_base()
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine)


class TattooMachine(Base):
    """Модель для хранения информации о тату-машинках"""

    __tablename__ = "tattoo_machines"

    id = Column(Integer, primary_key=True, autoincrement=True)
    url = Column(String, unique=True, nullable=False)
    title = Column(String, nullable=False)
    price = Column(Float, nullable=True)
    old_price = Column(Float, nullable=True)
    description = Column(Text, nullable=True)
    image_url = Column(String, nullable=True)
    availability = Column(String, nullable=True)
    article = Column(String, nullable=True)
    # Доп. характеристики
    model = Column(String, nullable=True)
    motor = Column(String, nullable=True)
    rpm = Column(String, nullable=True)  # обороты в минуту
    working_voltage = Column(String, nullable=True)
    material = Column(String, nullable=True)
    stroke_length = Column(String, nullable=True)
    color = Column(String, nullable=True)
    length = Column(String, nullable=True)
    diameter = Column(String, nullable=True)
    dimensions = Column(String, nullable=True)
    warranty = Column(String, nullable=True)
    production = Column(String, nullable=True)
    created_at = Column(DateTime, default=datetime.utcnow)
    updated_at = Column(
        DateTime, default=datetime.utcnow, onupdate=datetime.utcnow
    )

    def __repr__(self):
        return f"<TattooMachine(title='{self.title}', price={self.price})>"


def init_db():
    """Инициализация базы данных"""
    Base.metadata.create_all(engine)
    print("База данных инициализирована")


def migrate_db():
    """Простая миграция: добавляет недостающие столбцы под обновлённую модель.

    Для PostgreSQL выполняем ALTER TABLE IF NOT EXISTS для каждого нового поля.
    """
    # поле имя -> тип SQL
    columns = {
        "model": "VARCHAR",
        "motor": "VARCHAR",
        "rpm": "VARCHAR",
        "working_voltage": "VARCHAR",
        "material": "VARCHAR",
        "stroke_length": "VARCHAR",
        "color": "VARCHAR",
        "length": "VARCHAR",
        "diameter": "VARCHAR",
        "dimensions": "VARCHAR",
        "warranty": "VARCHAR",
        "production": "VARCHAR",
        "type": "VARCHAR",
        "purpose": "VARCHAR",
        "motor_power": "VARCHAR",
        "switching_frequency": "VARCHAR",
        "connector": "VARCHAR",
        "battery_capacity": "VARCHAR",
        "charge_time": "VARCHAR",
        "work_time": "VARCHAR",
        "weight": "VARCHAR",
    }

    with engine.connect() as conn:
        # Проверим существующие столбцы
        res = conn.exec_driver_sql(
            """
            SELECT column_name
            FROM information_schema.columns
            WHERE table_schema = 'public' AND table_name = 'tattoo_machines'
            """
        )
        existing = {row[0] for row in res}

        for col, sqltype in columns.items():
            if col not in existing:
                try:
                    conn.exec_driver_sql(
                        f'ALTER TABLE public.tattoo_machines ADD COLUMN "{col}" {sqltype};'
                    )
                    print(f"Добавлен столбец: {col}")
                except Exception as e:
                    print(f"Не удалось добавить столбец {col}: {e}")

        conn.commit()


async def get_product_links(page: Page, catalog_url: str) -> List[str]:
    """Получить все ссылки на товары со страницы каталога"""
    print(f"Открываем каталог: {catalog_url}")
    await page.goto(catalog_url, wait_until="networkidle")
    await page.wait_for_timeout(2000)

    # Ищем все ссылки на товары
    product_links = await page.evaluate(
        """
        () => {
            const links = [];
            // Ищем все ссылки на товары в каталоге
            const productElements = document.querySelectorAll('a[href*="/products/"]');
            productElements.forEach(element => {
                const href = element.getAttribute('href');
                if (href && 
                    !href.includes('/category/') && 
                    !href.includes('#') &&
                    href !== '/products' &&
                    href !== '/products/') {
                    const fullUrl = href.startsWith('http') ? href : 'https://tatu-shop.ru' + href;
                    links.push(fullUrl);
                }
            });
            return [...new Set(links)]; // Убираем дубликаты
        }
    """
    )

    print(f"Найдено {len(product_links)} товаров")
    return product_links


async def get_product_links_28opt(page: Page, catalog_url: str) -> List[str]:
    await page.goto(catalog_url, wait_until="networkidle")
    await page.wait_for_timeout(1500)
    return await page.evaluate(
        """
        () => {
            const sel = 'a[href*="/ez-tattoo/"]';
            const links = Array.from(document.querySelectorAll(sel))
                .map(a => a.href)
                .filter(h => h && !h.includes('#'));
            return [...new Set(links)];
        }
        """
    )


async def get_product_links_fenix(page: Page, catalog_url: str) -> List[str]:
    await page.goto(catalog_url, wait_until="networkidle")
    await page.wait_for_timeout(1500)
    return await page.evaluate(
        r"""
        () => {
            const sel = 'a[href*="/catalog/"]';
            const links = Array.from(document.querySelectorAll(sel))
                .map(a => a.href)
                    .filter(h => h && /\/catalog\/.*\/rotornye.*\/|\/product\//.test(h));
            return [...new Set(links)];
        }
           """
    )


async def parse_product_page_generic(page: Page, url: str) -> Optional[dict]:
    # Обёртка вокруг parse_product_page для сайтов 28opt и fenix
    try:
        await page.goto(url, wait_until="networkidle")
        await page.wait_for_timeout(1200)
        base = await page.evaluate(
            """
            () => {
                const data = {};
                const title = document.querySelector('h1, .product-title, [itemprop="name"]');
                data.title = title ? title.innerText.trim() : '';
                const priceEl = document.querySelector('[itemprop="price"], .price, .product-price');
                if (priceEl) {
                    let raw = priceEl.getAttribute('content')
                        || priceEl.getAttribute('data-price')
                        || priceEl.getAttribute('data-value')
                        || '';
                    if (!raw) raw = priceEl.textContent || '';
                    const nums = (raw.match(/\d+[\s.,]?\d*/g) || []).map(v => parseFloat(v.replace(/\s/g,'').replace(',','.'))).filter(n => !isNaN(n));
                    data.price = nums.length ? Math.min(...nums) : null;
                }
                const desc = document.querySelector('[itemprop="description"], .description, .product-description');
                data.description = desc ? desc.innerText.trim() : '';
                const img = document.querySelector('[itemprop="image"], .product-image img, .main-image img');
                data.image_url = img ? (img.src||img.getAttribute('src')) : '';
                const sku = document.querySelector('.sku, [itemprop="sku"], .article');
                data.article = sku ? sku.innerText.trim() : '';
                const avail = document.querySelector('.availability, .stock-status, .in-stock');
                data.availability = avail ? avail.innerText.trim() : '';
                return data;
            }
            """
        )
        base["url"] = url
        # Вытянуть характеристики тем же механизмом, что и основной сайт
        # Используем существующую логику: дублируем вызов блока specs из parse_product_page
        try:
            specs = await page.evaluate(
                """
                () => {
                    const result = {};
                    const mapKeys = {
                        'модель': 'model','model':'model',
                        'тип': 'type','тип машинки':'type', 'назначение':'purpose',
                        'мотор': 'motor','двигатель': 'motor','мощность двигателя':'motor_power',
                        'обороты': 'rpm','оборотов в минуту': 'rpm','об / мин': 'rpm','rpm':'rpm',
                        'рабочее напряжение': 'working_voltage','рабочий вольтаж':'working_voltage','напряжение':'working_voltage','вольтаж':'working_voltage',
                        'материал': 'material','материал рамы':'material',
                        'длина хода': 'stroke_length','ход бойка':'stroke_length','длина хода, мм':'stroke_length','ход иглы':'stroke_length',
                        'цвет': 'color',
                        'длина': 'length','высота':'length',
                        'диаметр': 'diameter','диаметр, мм':'diameter',
                        'размеры': 'dimensions','размер, мм':'dimensions','размеры, мм':'dimensions',
                        'гарантия': 'warranty','гарантия на блок питания':'warranty',
                        'производство': 'production','страна производства':'production',
                        'частота переключения': 'switching_frequency','частота переключения, гц':'switching_frequency',
                        'разъём': 'connector','тип подключения':'connector',
                        'емкость батареи':'battery_capacity','емкость аккумулятора, мач':'battery_capacity',
                        'время подзарядки':'charge_time','время зарядки':'charge_time',
                        'рабочее время powerpack':'work_time','время работы':'work_time',
                        'вес':'weight','вес с аккумулятором, г':'weight'
                    };
                    const textNorm = (t) => (t||'').toLowerCase().trim();
                    const tables = document.querySelectorAll('table, .specs, .characteristics, .product-features');
                    tables.forEach(tbl => {
                        tbl.querySelectorAll('tr').forEach(tr => {
                            const cells = tr.querySelectorAll('th, td');
                            if (cells.length >= 2) {
                                const k = textNorm(cells[0].innerText);
                                const v = cells[1].innerText.trim();
                                Object.keys(mapKeys).forEach(mk => { if (k.includes(mk)) result[mapKeys[mk]] = v; });
                            }
                        });
                    });
                    const lists = document.querySelectorAll('ul, ol');
                    lists.forEach(ul => {
                        ul.querySelectorAll('li').forEach(li => {
                            const txt = li.innerText;
                            const parts = txt.split(':');
                            if (parts.length >= 2) {
                                const k = textNorm(parts[0]);
                                const v = parts.slice(1).join(':').trim();
                                Object.keys(mapKeys).forEach(mk => { if (k.includes(mk)) result[mapKeys[mk]] = v; });
                            }
                        });
                    });
                    const blocks = document.querySelectorAll('[class*="spec"], [class*="char"], [class*="feature"]');
                    blocks.forEach(b => {
                        const txt = b.innerText || '';
                        const lines = txt.split('\n');
                        lines.forEach(line => {
                            const parts = line.split(':');
                            if (parts.length >= 2) {
                                const k = textNorm(parts[0]);
                                const v = parts.slice(1).join(':').trim();
                                Object.keys(mapKeys).forEach(mk => { if (k.includes(mk)) result[mapKeys[mk]] = v; });
                            }
                        });
                    });
                    return result;
                }
                """
            )
            if isinstance(specs, dict):
                base.update({k: v for k, v in specs.items() if v})
        except Exception:
            pass

        return base if base.get("title") else None
    except Exception as e:
        print(f"Ошибка при парсинге {url}: {e}")
        return None


async def parse_product_page(page: Page, url: str) -> Optional[dict]:
    """Парсинг страницы товара"""
    try:
        print(f"Парсинг товара: {url}")
        await page.goto(url, wait_until="networkidle")
        await page.wait_for_timeout(1500)

        # Извлекаем данные о товаре
        product_data = await page.evaluate(
            r"""
            () => {
                const data = {};
                
                // Название товара
                const titleElement = document.querySelector('h1, .product-title, [itemprop="name"]');
                data.title = titleElement ? titleElement.innerText.trim() : '';
                
                // Цена
                const priceElement = document.querySelector('[itemprop="price"], .product-price, .price');
                if (priceElement) {
                    // Пытаемся взять из атрибута content или data-*
                    let raw = priceElement.getAttribute('content')
                       || priceElement.getAttribute('data-price')
                       || priceElement.getAttribute('data-value')
                       || '';
                    if (!raw) raw = priceElement.textContent || '';
                    const nums = (raw.match(/\d+[\s.,]?\d*/g) || []).map(v => parseFloat(v.replace(/\s/g,'').replace(',','.'))).filter(n => !isNaN(n));
                    if (nums.length) {
                        // Берём минимальное число, чтобы избежать склейки 175354 → 175
                        data.price = Math.min(...nums);
                    } else {
                        data.price = null;
                    }
                }
                
                // Старая цена (если есть скидка)
                const oldPriceElement = document.querySelector('.old-price, .product-old-price, .price-old');
                if (oldPriceElement) {
                    const oldPriceText = oldPriceElement.innerText.replace(/[^0-9.,]/g, '').replace(',', '.');
                    data.old_price = oldPriceText ? parseFloat(oldPriceText) : null;
                }
                
                // Описание
                const descElement = document.querySelector('.product-description, [itemprop="description"], .description');
                data.description = descElement ? descElement.innerText.trim() : '';
                
                // Изображение
                const imgElement = document.querySelector('.product-image img, [itemprop="image"], .main-image img');
                data.image_url = imgElement ? imgElement.src : '';
                
                // Артикул
                const articleElement = document.querySelector('.article, .sku, [itemprop="sku"]');
                data.article = articleElement ? articleElement.innerText.trim() : '';
                
                // Наличие
                const availabilityElement = document.querySelector('.availability, .in-stock, .stock-status');
                data.availability = availabilityElement ? availabilityElement.innerText.trim() : 'Не указано';
                
                return data;
            }
            """
        )

        product_data["url"] = url

        # Если не нашли название, пробуем альтернативный способ
        if not product_data.get("title"):
            title_element = await page.query_selector("h1")
            if title_element:
                product_data["title"] = await title_element.inner_text()

        # Если не нашли цену, пробуем найти через другие селекторы
        if not product_data.get("price"):
            price_texts = await page.evaluate(
                """
                () => {
                    const elements = document.querySelectorAll('[class*="price"], [class*="Price"]');
                    return Array.from(elements).map(el => el.innerText);
                }
            """
            )
            for text in price_texts:
                match = re.search(r"(\d+[\s,.]?\d*)", text.replace(" ", ""))
                if match:
                    try:
                        product_data["price"] = float(
                            match.group(1).replace(",", ".")
                        )
                        break
                    except:
                        pass

        # Попытка извлечь характеристики из таблиц/блоков параметров
        try:
            specs = await page.evaluate(
                """
                () => {
                    const result = {};
                    const mapKeys = {
                        'модель': 'model','model':'model',
                        'тип': 'type','тип машинки':'type', 'назначение':'purpose',
                        'мотор': 'motor','двигатель': 'motor','мощность двигателя':'motor_power',
                        'обороты': 'rpm','оборотов в минуту': 'rpm','об / мин': 'rpm','rpm':'rpm',
                        'рабочее напряжение': 'working_voltage','рабочий вольтаж':'working_voltage','напряжение':'working_voltage','вольтаж':'working_voltage',
                        'материал': 'material','материал рамы':'material',
                        'длина хода': 'stroke_length','ход бойка':'stroke_length','длина хода, мм':'stroke_length','ход иглы':'stroke_length',
                        'цвет': 'color',
                        'длина': 'length','высота':'length',
                        'диаметр': 'diameter','диаметр, мм':'diameter',
                        'размеры': 'dimensions','размер, мм':'dimensions','размеры, мм':'dimensions',
                        'гарантия': 'warranty','гарантия на блок питания':'warranty',
                        'производство': 'production','страна производства':'production',
                        'частота переключения': 'switching_frequency','частота переключения, гц':'switching_frequency',
                        'разъём': 'connector','тип подключения':'connector',
                        'емкость батареи':'battery_capacity','емкость аккумулятора, мач':'battery_capacity',
                        'время подзарядки':'charge_time','время зарядки':'charge_time',
                        'рабочее время powerpack':'work_time','время работы':'work_time',
                        'вес':'weight','вес с аккумулятором, г':'weight'
                    };

                    const textNorm = (t) => (t||'').toLowerCase().trim();
                                const descElement = document.querySelector('.product-description, [itemprop="description"], .description, #for-explain');
                                let desc = descElement ? (descElement.innerText || '').trim() : '';
                                if (!desc) {
                                    const metaDesc = document.querySelector('meta[name="description"]');
                                    if (metaDesc) desc = metaDesc.getAttribute('content') || '';
                                }
                                data.description = desc;
                    const tables = document.querySelectorAll('table, .specs, .characteristics, .product-features');
                    tables.forEach(tbl => {
                                const imgElement = document.querySelector('.product-image img, [itemprop="image"], .main-image img');
                                let imgUrl = imgElement ? (imgElement.getAttribute('src') || imgElement.src) : '';
                                if (!imgUrl) {
                                    const ogImg = document.querySelector('meta[property="og:image"]');
                                    if (ogImg) imgUrl = ogImg.getAttribute('content') || '';
                                }
                                data.image_url = imgUrl;
                            if (cells.length >= 2) {
                                const k = textNorm(cells[0].innerText);
                                const v = cells[1].innerText.trim();
                                Object.keys(mapKeys).forEach(mk => {
                                    if (k.includes(mk)) result[mapKeys[mk]] = v;
                                });
                                const availabilityElement = document.querySelector('.availability, .in-stock, .stock-status, .product-availability');
                                let avail = availabilityElement ? (availabilityElement.innerText || '').trim() : '';
                                if (!avail) {
                                    // эвристика по тексту страницы
                                    const text = document.body ? (document.body.innerText || '') : '';
                                    if (/в наличии/i.test(text)) avail = 'В наличии';
                                    else if (/нет в наличии|ожидается/i.test(text)) avail = 'Нет в наличии';
                                }
                                data.availability = avail || 'Не указано';
                    });

                    // Списки характеристик
                    const lists = document.querySelectorAll('ul, ol');
                    lists.forEach(ul => {
                        ul.querySelectorAll('li').forEach(li => {
                            const txt = li.innerText;
                            const parts = txt.split(':');
                            if (parts.length >= 2) {
                                const k = textNorm(parts[0]);
                                const v = parts.slice(1).join(':').trim();
                                Object.keys(mapKeys).forEach(mk => {
                                    if (k.includes(mk)) result[mapKeys[mk]] = v;
                                });
                            }
                        });
                    });

                    // Атрибуты в блоках
                    const blocks = document.querySelectorAll('[class*="spec"], [class*="char"], [class*="feature"]');
                    blocks.forEach(b => {
                        const txt = b.innerText || '';
                        const lines = txt.split('\n');
                        lines.forEach(line => {
                            const parts = line.split(':');
                            if (parts.length >= 2) {
                                const k = textNorm(parts[0]);
                                const v = parts.slice(1).join(':').trim();
                                Object.keys(mapKeys).forEach(mk => {
                                    if (k.includes(mk)) result[mapKeys[mk]] = v;
                                });
                            }
                        });
                    });

                    return result;
                }
                """
            )
            if isinstance(specs, dict):
                product_data.update({k: v for k, v in specs.items() if v})

                # Python-side normalization
                def _norm(key: str, val: str) -> str:
                    if not val:
                        return val
                    kv = (key or "").lower()
                    v = str(val).strip()
                    v = re.sub(r"\s+", " ", v)
                    if kv in ["rpm"]:
                        m = re.search(r"(\d+[\s,.]?\d*)", v.replace(" ", ""))
                        return m.group(1).replace(",", ".") if m else v
                    if kv in ["stroke_length", "diameter", "length"]:
                        m = re.search(r"(\d+[\s,.]?\d*)\s*мм", v.lower())
                        return (
                            (m.group(1).replace(",", ".") + " мм") if m else v
                        )
                    if kv in ["working_voltage"]:
                        m = re.search(
                            r"(\d+[\s,.]?\d*)\s*-?\s*(\d+[\s,.]?\d*)?\s*v",
                            v.lower(),
                        )
                        return (
                            v.upper()
                            if not m
                            else f"{m.group(1).replace(',', '.')}"
                            + (
                                f"-{m.group(2).replace(',', '.')} V"
                                if m.group(2)
                                else " V"
                            )
                        )
                    if kv in ["switching_frequency"]:
                        m = re.search(r"(\d+[\s,.]?\d*)\s*гц", v.lower())
                        return (
                            (m.group(1).replace(",", ".") + " Гц") if m else v
                        )
                    if kv in ["battery_capacity"]:
                        m = re.search(r"(\d+[\s,.]?\d*)\s*м[аa]ч", v.lower())
                        return (
                            (m.group(1).replace(",", ".") + " мАч") if m else v
                        )
                    if kv in ["charge_time"]:
                        m = re.search(r"(\d+[\s,.]?\d*)\s*час", v.lower())
                        return (
                            (m.group(1).replace(",", ".") + " часа")
                            if m
                            else v
                        )
                    if kv in ["weight"]:
                        m = re.search(r"(\d+[\s,.]?\d*)\s*г", v.lower())
                        return (
                            (m.group(1).replace(",", ".") + " г") if m else v
                        )
                    return v

                for k in list(specs.keys()):
                    try:
                        product_data[k] = _norm(k, product_data[k])
                    except Exception:
                        pass
        except Exception:
            pass

        return product_data if product_data.get("title") else None

    except Exception as e:
        print(f"Ошибка при парсинге {url}: {e}")
        return None


def save_to_database(products_data: List[dict]):
    """Сохранение данных в базу данных"""
    session = SessionLocal()
    saved_count = 0

    try:
        for data in products_data:
            if not data or not data.get("url"):
                continue

            existing = (
                session.query(TattooMachine)
                .filter(TattooMachine.url == data["url"])
                .first()
            )
            if existing:
                # Обновляем только непустые значения
                for k, v in data.items():
                    if hasattr(existing, k) and v not in (None, ""):
                        setattr(existing, k, v)
                existing.updated_at = datetime.utcnow()
            else:
                machine = TattooMachine(**data)
                session.add(machine)
                saved_count += 1

        session.commit()
        print(f"Сохранено новых товаров: {saved_count}")

    except Exception as e:
        session.rollback()
        print(f"Ошибка при сохранении в базу данных: {e}")
    finally:
        session.close()


def save_one_product(data: dict):
    """Сохранить одну тату-машинку сразу после парсинга."""
    if not data or not data.get("title"):
        return False
    session = SessionLocal()
    try:
        machine = TattooMachine(**data)
        session.add(machine)
        session.commit()
        return True
    except Exception as e:
        session.rollback()
        print(f"Ошибка при сохранении товара ({data.get('url','')}): {e}")
        return False
    finally:
        session.close()


async def main():
    """Основная функция парсинга"""
    catalog_url_ts = (
        "https://tatu-shop.ru/products/category/rotary-tattoo-machines-pen"
    )
    catalog_url_28 = "https://28opt.ru/ez-tattoo/"
    catalog_url_fx = "https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/"

    print("Запуск парсера...")
    init_db()
    migrate_db()

    async with async_playwright() as p:
        # Запускаем браузер
        browser = await p.chromium.launch(headless=True)
        context = await browser.new_context(
            viewport={"width": 1920, "height": 1080},
            user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
        )
        page = await context.new_page()

        try:
            products_data = []

            # Сайт tatu-shop.ru
            print("\nСбор ссылок tatu-shop.ru...")
            ts_links = await get_product_links(page, catalog_url_ts)
            print(f"tatu-shop: {len(ts_links)} ссылок")
            for i, link in enumerate(ts_links, 1):
                print(f"tatu-shop {i}/{len(ts_links)}")
                pd = await parse_product_page(page, link)
                if pd:
                    products_data.append(pd)
                    # Сохраняем сразу после парсинга
                    save_one_product(pd)
                await page.wait_for_timeout(600)

            # Сайт 28opt.ru
            print("\nСбор ссылок 28opt.ru...")
            opt_links = await get_product_links_28opt(page, catalog_url_28)
            print(f"28opt: {len(opt_links)} ссылок")
            for i, link in enumerate(opt_links, 1):
                print(f"28opt {i}/{len(opt_links)}")
                pd = await parse_product_page_generic(page, link)
                if pd:
                    products_data.append(pd)
                    save_one_product(pd)
                await page.wait_for_timeout(600)

            # Сайт fenix-tattoo.ru
            print("\nСбор ссылок fenix-tattoo.ru...")
            fx_links = await get_product_links_fenix(page, catalog_url_fx)
            print(f"fenix-tattoo: {len(fx_links)} ссылок")
            for i, link in enumerate(fx_links, 1):
                print(f"fenix {i}/{len(fx_links)}")
                pd = await parse_product_page_generic(page, link)
                if pd:
                    products_data.append(pd)
                    save_one_product(pd)
                await page.wait_for_timeout(600)

            # Сохраняем в базу данных
            print("\nСохранение в базу данных...")
            save_to_database(products_data)

            print(f"\n{'='*50}")
            print(f"Парсинг завершен!")
            print(f"Всего обработано товаров: {len(products_data)}")
            print(f"{'='*50}")

        finally:
            await browser.close()


if __name__ == "__main__":
    asyncio.run(main())
