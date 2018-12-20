FROM ubuntu:latest

RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && sed -i 's/http:\/\/security\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && apt-get update \
  && apt-get -y install \
        libboost-system1.65.1 \
        libmysqlclient20 \
        mysql-client \
  && rm -rf /var/lib/apt/lists/*
