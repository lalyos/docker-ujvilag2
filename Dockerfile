FROM ubuntu

RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx