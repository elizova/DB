from typing import List

from pydantic import BaseModel


class ProductSchema(BaseModel):
    id: int
    name: str | None = None
    product_url: str | None = None
    photo_url: str | None = None
    cost: float | None = None
    weight: str | None = None
    work_time: str | None = None
    charge_time: str | None = None
    lenght_of_work: str | None = None
    battery_capacity: str | None = None
    voltage: str | None = None
    model: str | None = None
    material: str | None = None
    power: str | None = None
    motor: str | None = None
    manufactured: str | None = None
    warranty: str | None = None
    rpm: str | None = None


class ProductViewSchema(BaseModel):
    count: int
    result: List[ProductSchema] | None = None
