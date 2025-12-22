import enum
from datetime import date, datetime
from typing import List

from sqlalchemy import DATE, TEXT, Column, DateTime, Enum, Float, ForeignKey, Integer
from sqlalchemy.orm import Mapped, mapped_column, relationship
from src.database.database import base


class PlanType(base):
    __tablename__ = "plan_type"

    id = Column(Integer, primary_key=True)

