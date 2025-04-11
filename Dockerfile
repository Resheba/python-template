FROM python:3.11.9-slim

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod 775 docker/app.sh

EXPOSE 80

CMD ["docker/app.sh"]
