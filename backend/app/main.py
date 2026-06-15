from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def meow():
    return {
  "message": "AI Interior Copilot Backend Running"
}