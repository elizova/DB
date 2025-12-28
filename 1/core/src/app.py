import os

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from src.v1.api import api_router

app = FastAPI(
    openapi_url="/api/v1/openapi.json",
    docs_url="/api/v1/docs",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(api_router, prefix="/api/v1")

WEB_DIR = os.path.join(os.path.dirname(__file__), "static", "web")
if os.path.isdir(WEB_DIR):
    app.mount(
        "/web",
        StaticFiles(directory=WEB_DIR, html=True),
        name="web",
    )

    @app.get("/web/{full_path:path}")
    async def web_spa_fallback(full_path: str):
        index_path = os.path.join(WEB_DIR, "index.html")
        if os.path.exists(index_path):
            return FileResponse(index_path)
        return {"error": "frontend not built"}
