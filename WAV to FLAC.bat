@echo off
for %%I IN ("*.wav") DO ffmpeg -i "%%I" "%%~nI".flac
echo ��ȫ��ת��ΪFLAC
pause
