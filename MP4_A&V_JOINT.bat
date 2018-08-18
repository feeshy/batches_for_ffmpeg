@echo off
for %%A IN ("*.m4a") DO ffmpeg -i "%%~nA_mute".mp4 -i "%%A" -c copy "%%~A_done".mp4
echo 音视频混流完成。已全部输出为done结尾的文件！
pause