FROM animcogn/face_recognition

COPY requirements.txt requirements.txt

RUN pip3 install -r ./requirements.txt

COPY . /app
CMD ["python3", "/app/app.py"]