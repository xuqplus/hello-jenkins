FROM alpine:3.13

RUN apk add nginx curl

COPY ngrok-*.tgz /

RUN tar -xzvf ngrok-*.tgz && rm -rf ngrok-*.tgz && mkdir /run/nginx/

COPY default.conf /etc/nginx/http.d/
COPY index.html /var/lib/nginx/html/

EXPOSE 80 4040

CMD nginx && ./ngrok authtoken 1k2HihCeOVEApxpbYjquifbKi0O_7qRK96XHsxGK5YB4WqttW && ./ngrok http 80
