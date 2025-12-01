FROM debian:stable

WORKDIR /inception

COPY public_certificate.pem /requierements/nginx/public_certificate.pem
COPY private_key.pem /requierements/nginx/private_key.pem

COPY nginx.conf /inception/srcs/nginx/nginx.conf 

RUN apt update && apt install -y nginx 

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]