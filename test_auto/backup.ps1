# 获取日期
$today = Get-Date -Format "yyyy-MM-dd"
$source = "$env:USERPROFILE\Downloads"
$dest = "C:\Backup\$today"

# 如果目标文件夹不存在则创建
if (!(Test-Path $dest)) {
    New-Item -Path $dest -ItemType Directory | Out-Null
}

# 获取源目录文件
$files = Get-ChildItem -Path $source


if ($files.Count -eq 0) {
    Write-Host "没有下载文件，跳过备份"
} else {
    Move-Item "$source\*" $dest -Force
    Write-Host "备份完成：$dest"
}