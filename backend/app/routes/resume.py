from fastapi import APIRouter, UploadFile, File

router = APIRouter(
    prefix="/resume",
    tags=["Resume"],
)


@router.get("/")
def resume_home():
    return {
        "message": "Resume API is Working 🚀"
    }


@router.post("/upload")
async def upload_resume(file: UploadFile = File(...)):
    return {
        "filename": file.filename,
        "content_type": file.content_type,
        "message": "Resume received successfully"
    }