from alpine

COPY /isitworking_app /app/
WORKDIR /app

RUN apk update && \
apk add python3
RUN pip3 install -r requirements.txt

ENTRYPOINT gunicorn -w 2 -b 0.0.0.0:5000 isitworking:app
