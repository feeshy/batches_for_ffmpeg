@echo off
for %%I IN ("*.flv") DO ffmpeg -i "%%I" -vn -c copy "%%~nI".mp3
echo ��Ƶ��ȡ��ɣ�
pause