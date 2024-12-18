FROM python:3.11.11-alpine3.21

RUN apk update
RUN apk add bash

RUN adduser -S server 
RUN passwd
USER server

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]

