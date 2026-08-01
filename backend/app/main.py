from fastapi import FastAPI

from app.routes.resume import router as resume_router

app = FastAPI(
    title="CareerBoost API",
    description="AI Resume Analyzer & Mock Interview Backend",
    version="1.0.0",
)

app.include_router(resume_router)


@app.get("/")
def root():
    return {
        "message": "Welcome to CareerBoost API 🚀",
        "status": "Running Successfully",
    }


@app.get("/health")
def health():
    return {
        "status": "OK",
    }