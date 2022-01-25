FROM python:3.8.12 as compiled
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -U pip wheel cmake
RUN pip install --user -r requirements.txt

FROM baseImage
ADD . /app
CMD ["python", "app.py"]