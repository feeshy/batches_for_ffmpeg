hifidiy论坛出品的AUNE M1播放器采用了非常原始的单片机系统，
只支持16bit 44.1kHz的WAV文件这一种格式。
然而硬盘里最常见的却是flac、mp3、m4a这些格式的歌曲……

-----

为了方便导歌，写了一个ffmpeg的批处理脚本。
这种简单的操作，还有什么能比ffmpeg更快的？

```
@echo off
for %%I IN ("*.flac" "*.ape" "*.m4a" "*.aac" "*.mp3") DO ffmpeg -i "%%I" -sample_fmt s16 -ar 44100 "%%~nI".wav
echo 已全部转换为 16bit 44100kHz WAV
pause
```
将ffmpeg.exe和脚本放在想要转换的文件夹里，运行bat，即可将文件夹内全部特定扩展名的文件转换至AUNE M1兼容的WAV。

默认已经包含了常见的flac、ape、m4a、aac、mp3文件。如有其他需求请自行增删 :P

-----

M1播放有ID3 tag的文件时，有时会有爆音的问题。可以用MP3tag为转换完的文件删除标签，删除标签之前也可以先按标签把文件名组织的更有条理些。

另外，M1连最基本的文件排序功能都没做。我们还需要一个调整闪存文件顺序的工具DriveSort，来实现按名称排序。

最后，还有一个可能只会用到一次的工具——Diskgenius，用来将32GB以上的SD卡格式化为FAT32文件系统。下载单文件免安装版，用完即删就可以。

-----

[M1官方论坛](http://bbs.hifidiy.net/forum-109-1.html)
[ffmpeg最新Build](http://ffmpeg.zeranoe.com/builds/)
[ffmpeg官方文档](https://www.ffmpeg.org/ffmpeg.html#Audio-Options)
[Mp3tag](https://www.mp3tag.de/en/download.html)
[DriveSort](http://www.anerty.net/software/file/DriveSort/)
[Diskgenius](http://www.diskgenius.cn/download.php)
