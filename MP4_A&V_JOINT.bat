@echo off
for %%A IN ("*.m4a") DO ffmpeg -i "%%~nA_mute".mp4 -i "%%A" -c copy "%%~A_done".mp4
echo ����Ƶ������ɡ���ȫ�����Ϊdone��β���ļ���
pause