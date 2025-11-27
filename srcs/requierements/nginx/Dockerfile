FROM debian:stable

WORKDIR /inception

COPY nginx.conf /inception/srcs/nginx/nginx.conf 

RUN apt update && apt install -y nginx 

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]