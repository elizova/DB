from sqlalchemy import (
    TEXT,
    Column,
    Float,
    ForeignKey,
    Integer,
    UniqueConstraint,
)
from sqlalchemy.orm import relationship
from src.database.database import base


class ProductOrm(base):
    __tablename__ = "product"
    __table_args__ = (UniqueConstraint("url", name="uq_product_url"),)

    id = Column(Integer, primary_key=True)

    name = Column(TEXT)
    url = Column(TEXT)

    properties = relationship(
        "PropertyOrm",
        back_populates="product",
        cascade="all, delete-orphan",
        passive_deletes=True,
    )
    photos = relationship(
        "PhotoOrm",
        back_populates="product",
        cascade="all, delete-orphan",
        passive_deletes=True,
    )


class PropertyOrm(base):
    __tablename__ = "property"

    id = Column(Integer, primary_key=True)

    product_id = Column(ForeignKey("product.id", ondelete="CASCADE"))

    cost = Column(Float)
    weight = Column(TEXT)
    work_time = Column(TEXT)
    charge_time = Column(TEXT)
    lenght_of_work = Column(TEXT)
    battery_capacity = Column(TEXT)
    voltage = Column(TEXT)
    model = Column(TEXT)
    material = Column(TEXT)
    power = Column(TEXT)
    motor = Column(TEXT)
    manufactured = Column(TEXT)
    warranty = Column(TEXT)
    rpm = Column(TEXT)

    product = relationship("ProductOrm", back_populates="properties")


class PhotoOrm(base):
    __tablename__ = "photo"

    id = Column(Integer, primary_key=True)

    product_id = Column(ForeignKey("product.id", ondelete="CASCADE"))

    url = Column(TEXT)

    product = relationship("ProductOrm", back_populates="photos")
