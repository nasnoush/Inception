FROM debian:bookworm

WORKDIR /inception

COPY ./public_certificate.pem /etc/ssl/certs/cert.pem
COPY ./private_key.pem /etc/ssl/private/key.pem

COPY nginx.conf /inception/srcs/nginx/nginx.conf 

RUN apt update && apt install -y nginx 

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
