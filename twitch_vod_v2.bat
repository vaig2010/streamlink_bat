@echo off

set dt=%DATE:~0,2%_%DATE:~3,2%_%DATE:~6,4%__%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
set dt=%dt: =0%

set /p nick=Enter twitch nickname:
set vod_path=F:\streamlink_vods
set fname=%nick%_%dt%
set streamlink_path=F:\StreamLink2\bin\streamlink.exe
set vformat=.mp4

%streamlink_path% twitch.tv/%nick% best -o %vod_path%\%fname%.%vformat%
