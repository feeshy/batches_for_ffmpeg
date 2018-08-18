@echo off
echo 将转换本文件夹内所有扩展名为flac、ape、m4a、aac、mp3的文件至AUNE M1兼容的wav
echo 如有其他需求，请右键编辑本批处理，自行增删 :P
pause
for %%I IN ("*.flac" "*.ape" "*.m4a" "*.aac" "*.mp3") DO ffmpeg -i "%%I" -sample_fmt s16 -ar 44100 "%%~nI".wav
echo 已全部转换为 16bit 44100kHz WAV
pause
