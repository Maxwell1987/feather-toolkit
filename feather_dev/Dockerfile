FROM ubuntu:latest

COPY ./entrypoint.sh /

RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && sed -i 's/http:\/\/security\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && apt-get update \
  && apt-get -y install \
        cmake \
        gcc \
        git \
        libboost-all-dev \
        libmysqlclient-dev \
        libpqxx-dev \
        make \
        openssl \
        sqlite \
        uuid-dev \
        zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bash", "./entrypoint.sh"]
