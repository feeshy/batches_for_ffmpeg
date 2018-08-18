@echo off
for %%I IN ("*.mp4" "*.mkv") DO ffmpeg -i "%%I" -vn -c copy "%%~nI".m4a
echo 音频提取完成！
pause