#!/bin/bash
export CODE=get-code
execFile=get-code.sh

# 清空原始脚本文件
rm -rf /usr/bin/$CODE
touch /usr/bin/$CODE
# 安装所需依赖
pip --default-timeout=1000 --trusted-host mirrors.aliyun.com install -i http://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
cd script
path=$(readlink -f ./)
if [ -f $path/$execFile ]; then
  # 替换执行路径
  sed -i "s@python PATH@python $path@" $path/$execFile
  echo Initialize $execFile successfully.
else
  echo $execFile not found!
fi
# 软链接映射
ln -sf $path/get-code.sh /usr/bin/$CODE
echo 'Now you can input "get-code" to get IDEA activation code in Git Bash command line.' 