FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine-2020-12-19
RUN apk --update add bash vim
RUN /usr/local/bin/python -m pip install --upgrade pip

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 80