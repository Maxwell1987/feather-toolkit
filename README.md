# feather-toolkit
基于 Docker 的开发环境

本环境适用于需要快速简单修改代码的场景，如果为了修改少量代码而安装一套可成功编译、运行、调试的环境性价比很低。而使用本环境则只需要有文本编辑器就可以完成编译、运行的工作。

### 初始化环境
1. 若本机已安装 Git，clone feather 项目，运行
```
./init.sh
```
或
```
init.bat
```
以上脚本需要在有网络的环境下运行

2. 若本机未安装 Git，创建一个空白目录，在空白目录中执行
```
docker image build --pull --tag feather_dev:latest https://github.com/Maxwell1987/feather-toolkit.git#:feather_dev
docker container run -it --rm -v "$PWD":/opt feather_dev:latest
docker image build --pull --tag feather_base:latest feather_base
docker image pull mariadb:latest
```

### 修改代码
使用自己熟悉的编译器编辑 ./feather 目录下的 feather 代码

### 编译运行
```
./upgrade.sh
```
或
```
upgrade.bat
```

访问地址
```
http://localhost:8080/
```
首次访问时先从
```
http://localhost:8080/sign_out_page
```
创建用户

### 停止运行
```
./shutdown.sh
```
或
```
shutdown.sh
```

### 清理环境
```
./cleanup.sh
```
或
```
cleanup.sh
```
