# feather-toolkit
基于 Docker 的开发环境

本环境适用于需要快速简单修改代码的场景，如果为了修改少量代码而安装一套可成功编译、运行、调试的环境性价比很低。而使用本环境则只需要有文本编辑器就可以完成编译、运行的工作。

### 安装 Docker

1. Ubuntu
```
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo usermod -aG docker $USER
```
更多信息见
```
https://docs.docker.com/install/linux/docker-ce/ubuntu/
```

2. macOS
```
https://hub.docker.com/editions/community/docker-ce-desktop-mac
```

3. Windows
```
https://hub.docker.com/editions/community/docker-ce-desktop-windows
```

4. 其它系统
```
https://docs.docker.com/install/
```

### 初始化环境
1. 若本机已安装 Git，创建一个新目录（可取名为 `feather-toolkit`），在该目录中执行
```
git clone https://github.com/Maxwell1987/feather-toolkit.git .
```
将 feather-toolkit clone 到本地，然后执行
```
./init.sh
```
或
```
init.bat
```

2. 若本机未安装 Git，创建一个空白目录，在空白目录中执行
```
docker image build --pull --tag feather_dev:latest https://github.com/Maxwell1987/feather-toolkit.git#:feather_dev
docker container run -it --rm -v "$PWD":/opt feather_dev:latest
docker image build --pull --tag feather_base:latest feather_base
docker image pull mariadb:latest
```
以上操作皆需要在有网络的环境下运行。

### 修改代码
使用自己熟悉的编译器编辑 ./feather 目录下的代码

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
