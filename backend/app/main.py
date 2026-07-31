from fastapi import FastAPI

app = FastAPI(
    title="CareerBoost API",
    description="AI Resume Analyzer & Mock Interview Backend",
    version="1.0.0",
)

@app.get("/")
def root():
    return {
        "message": "Welcome to CareerBoost API 🚀",
        "status": "Running Successfully"
    }

@app.get("/health")
def health():
    return {
        "status": "OK"
    }