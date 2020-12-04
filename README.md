<h1 align="center">py-cli</h1>

<p align="center"><img src="https://img.shields.io/badge/author-zchengb-%230C7DBE"/>&nbsp;<img src="https://img.shields.io/badge/python-v3.8-blue"/>&nbsp;<img src="https://img.shields.io/badge/license-MIT-green"/>&nbsp;
<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/zchengb/py-cli?style=social"/>&nbsp;</p>

>**Tips：以下工具集均依赖Python环境，请先配置好Python环境与环境变量后操作。**
>
>**可通过Bash / CMD执行`git clone https://github.com/zchengb/py-cli.git`拉取** *（需对本项目进行存储）*

## 0. get-code

>**用于快速获取JetBrains激活码，并复制至剪切板*（可直接粘贴使用，请勿用于非法使用）* **

### 0.1 Bash方式

- 执行安装脚本

```shell
$ bash install.sh
Now you can input "get-code" to get IDEA activation code in Git Bash command line.
```

安装完成后即可全局使用`get-code`指令。

- 获取激活码

```shell
$ get-code

Downloading activation code file...
Download successful：1604297573.8338182.zip

####The activation code has been copied.#####
################  Clean Up  #################
```

执行结果如上所述说明已成功拉取最新Activation Code，**可直接粘贴使用**。

### 0.2 手动获取

>手动获取主要针对用户手动执行脚本文件进行激活码的获取，按照以下流程执行即可，只需执行一次安装依赖步骤。

- 安装依赖 *（需进入项目路径下执行）*

```bash
$ pip --trusted-host mirrors.aliyun.com install -i http://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
```

- 获取激活码

```bash
$ python ./script/code.py
```

