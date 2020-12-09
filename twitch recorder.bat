:loop
@echo off
set name=%shroud
set name=%name: =0%
set DATE_TIME=%DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set DATE_TIME=%DATE_TIME: =0%
set /A clock=%RANDOM% %% 60 + 1
set clock=%clock: =0%
Echo on
youtube-d -r 3M --download-archive dl.txt --playlist-end 1 --hls-use-mpegts --no-part https://www.twitch.tv/%name% -o %name%_%DATE_TIME%.ts

timeout /t %clock%
goto loop