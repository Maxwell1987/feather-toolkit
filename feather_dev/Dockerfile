FROM ubuntu:latest

RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && sed -i 's/http:\/\/security\.ubuntu\.com\/ubuntu/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list \
  && apt-get update \
  && apt-get -y install \
        cmake \
        gcc-8 \
        g++-8 \
        git \
        libboost-filesystem-dev \
        libboost-system-dev \
        libmysqlclient-dev \
        libpqxx-dev \
        make \
        openssl \
        sqlite \
        uuid-dev \
        zlib1g-dev \
  && rm -rf /var/lib/apt/lists/* \
  && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8

COPY ./entrypoint.sh /

ENTRYPOINT ["bash", "./entrypoint.sh"]
