FROM nginx
RUN apt update && apt install -y net-tools iproute2 iputils-ping ssh vim
COPY . /usr/share/nginx/html