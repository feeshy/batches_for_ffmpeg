@echo off
for %%I IN ("*.wav") DO ffmpeg -i "%%I" "%%~nI".flac
echo 已全部转换为FLAC
pause
