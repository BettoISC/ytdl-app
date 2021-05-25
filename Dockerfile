FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine-2020-12-19
RUN apk --update add bash vim
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN apk add --no-cache git



RUN rm -r *
RUN rm -r .git*
RUN rm -r .P*
RUN rm -r .d*
RUN git clone https://github.com/BettoISC/ytdl-app.git .

COPY . /app
RUN pip install -r requirements.txt



# EXPOSE 8080

CMD bash -C './start.sh'