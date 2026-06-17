from fastapi import FastAPI
from pydantic import BaseModel
app = FastAPI()
@app.get("/")
def meow():
    return {
  "message": "AI Interior Copilot Backend Running"
}
@app.get("/health")
def healthcheck():
    return{
        "Status": "healthy",
        "service":"AI Interior Copilot Backend",
        "version": "1.0"
        }
class dataentry(BaseModel):
    room_type:str
    style:str
    budget:int
@app.post("/recommend")
def recommend(data : dataentry):
    if data.room_type == "Bedroom" and data.style == "modern" and data.budget == 100000:
        return{
        "message":"data recieved",
        "recommendation":"go fuck yourself"
        }
    