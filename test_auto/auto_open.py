import webbrowser
import time
import os

# 你要访问的网址
url = "https://example.com"

# 打开浏览器
webbrowser.open(url)
print("已打开网页：", url)

# 等待10秒钟（假设这段时间你手动点击下载）
time.sleep(10)

# 下载目录
download_dir = os.path.join(os.path.expanduser("~"), "Downloads")

# 检查是否有下载的文件（示例）
files = os.listdir(download_dir)

if len(files) == 0:
    print("下载目录没有文件，可能网页没有下载目标")
else:
    print("下载目录文件列表：", files)