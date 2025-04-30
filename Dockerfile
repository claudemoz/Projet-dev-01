FROM nginx
RUN apt update && apt install -y net-tools iproute2 iputils-ping ssh vim
COPY index.html /usr/share/nginx/html/index.html