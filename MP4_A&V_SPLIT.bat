@echo off
for %%I IN ("*.mp4") DO ffmpeg -i "%%I" -vn -c copy "%%~nI".m4a
echo ��Ƶ��ȡ��ɣ�
pause
for %%I IN ("*.mp4") DO ffmpeg -i "%%I" -an -c copy "%%~nI_mute".mp4
echo ��Ƶ��ȡ��ɣ�
pause