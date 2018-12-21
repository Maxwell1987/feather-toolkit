# feather-toolkit
基于 Docker 的开发环境

本环境适用于需要快速简单修改代码的场景，如果为了修改少量代码而安装一套可成功编译、运行、调试的环境性价比很低。而使用本环境则只需要有文本编辑器就可以完成编译、运行的工作。

### 安装 Docker 和 Docker Compose

1. Ubuntu
```
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-compose
sudo usermod -aG docker $USER
```
以上步骤操作完之后需注销再登录或者重启系统。更多信息见
```
https://docs.docker.com/install/linux/docker-ce/ubuntu/
https://docs.docker.com/compose/install/
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
https://docs.docker.com/compose/install/
```

### 初始化环境
新建一个目录，使用
```
git clone https://github.com/Maxwell1987/feather-toolkit.git .
```
将 feather-toolkit clone 到本地，或者使用
```
https://github.com/Maxwell1987/feather-toolkit/archive/master.zip
```
下载文件并展开到目录中，执行
```
./init.sh
```
或
```
init.bat
```

以上操作需要在有网络的环境下运行。

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
shutdown.bat
```

### 清理环境
```
./cleanup.sh
```
或
```
cleanup.bat
```

## 致谢
As.xjc
