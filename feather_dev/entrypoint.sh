#!/bin/bash -xe

if [ ! -f /opt/init.sh ]; then
  cd /opt
  git clone https://github.com/Maxwell1987/feather-toolkit.git .
fi

if [ ! -f /opt/feather/README.md ]; then
  cd /opt
  git clone https://github.com/qicosmos/feather
  cd feather
  git submodule update --init
  mkdir build
fi

cd /opt/feather/build
cmake ..
make CXX_FLAGS+="-std=c++17"
