@echo off
for %%I IN ("*.flv") DO ffmpeg -i "%%I" -vn -c copy "%%~nI".mp3
echo 音频提取完成！
pause