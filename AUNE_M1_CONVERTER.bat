@echo off
echo ��ת�����ļ�����������չ��Ϊflac��ape��m4a��aac��mp3���ļ���AUNE M1���ݵ�wav
echo ���������������Ҽ��༭��������������ɾ :P
pause
for %%I IN ("*.flac" "*.ape" "*.m4a" "*.aac" "*.mp3") DO ffmpeg -i "%%I" -sample_fmt s16 -ar 44100 "%%~nI".wav
echo ��ȫ��ת��Ϊ 16bit 44100kHz WAV
pause
