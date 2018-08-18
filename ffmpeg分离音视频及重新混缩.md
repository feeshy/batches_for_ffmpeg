
有时去看现场，会录一两首歌做纪念。
回来想要简单处理一下音频，而又不希望对视频重新编码。

流程很简单：
ffmpeg 分离出音频 -> 用音频软件处理电平和动态 -> ffmpeg 重新混合

### 分离
```
@echo off
for %%A IN ("*.mp4") DO ffmpeg -i "%%A" -vn -c copy "%%~nA".m4a
echo 音频提取完成！
pause
for %%V IN ("*.mp4") DO ffmpeg -i "%%V" -an -c copy "%%~nV_mute".mp4
echo 视频提取完成！
pause
```
### 混合
```
@echo off
for %%A IN ("*.m4a") DO ffmpeg -i "%%~nA_mute".mp4 -i "%%A" -c copy "%%~A_done".mp4
echo 音视频混流完成。已全部输出为done结尾的文件！
pause
```
