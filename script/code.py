import urllib.request
import time
import zipfile
import pyperclip
import os

if __name__ == "__main__":
    # 下载地址
    url = "http://idea.medeming.com/jihuoma/images/jihuoma.zip"
    # 压缩包名称
    fileName = str(time.time()) + ".zip";
    # 激活文件名称
    activeFileName = "2018.2之后的版本用这个.txt"

    try:
        print("\nDownloading activation code file...")
        urllib.request.urlretrieve(url, fileName)
        print("Download successful：" + fileName)
        with zipfile.ZipFile(fileName) as z:
            pyperclip.copy(str(z.read(activeFileName.encode("gbk").decode("cp437")), encoding = "utf-8"))
            print("\n####The activation code has been copied.#####")
        if os.path.isfile(fileName):
            os.remove(fileName)
            print("################  Clean Up  #################")
    except e:
        print("Please try to update our tools by this git command in the root directory: 'git pull origin master'")