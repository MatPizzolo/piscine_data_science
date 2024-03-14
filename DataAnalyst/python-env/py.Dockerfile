FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

COPY . /app
WORKDIR /app

RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["tail", "-f", "/dev/null"]
