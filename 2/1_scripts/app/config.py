import os

from dotenv import load_dotenv

load_dotenv()

PG_CONFIG = {
    "dbname": os.environ.get("DB_NAME"),
    "user": os.environ.get("DB_USER"),
    "password": os.environ.get("DB_PASS"),
    "host": os.environ.get("DB_HOST"),
    "port": os.environ.get("DB_PORT")
}

BACK4APP = {
    "app_id": os.environ.get("B4A_APP_ID"),
    "rest_key": os.environ.get("B4A_KEY"),
    "base_url": os.environ.get("B4A_BASE_URL")
}
