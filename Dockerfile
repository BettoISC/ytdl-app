FROM python:3.8.1

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "./app.py"]