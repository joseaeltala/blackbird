FROM python:3
WORKDIR /app
COPY . .

ENV username=test

RUN pip install -r requirements.txt

ENTRYPOINT ["python","blackbird.py","-u","$username"]
