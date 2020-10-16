FROM ubuntu

RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN echo 'ebed ...' > /var/www/html/index.html

EXPOSE 80
CMD ["nginx","-g","daemon off;"]