@echo off
for %%I IN ("*.mp4") DO ffmpeg -i "%%I" -vn -c copy "%%~nI".m4a
echo 音频提取完成！
pause
for %%I IN ("*.mp4") DO ffmpeg -i "%%I" -an -c copy "%%~nI_mute".mp4
echo 视频提取完成！
pause
