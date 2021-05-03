:loop
@echo off
set name=%NASASpaceflight
set token=%UCSUu1lih2RifWkKtDOJdsBA
set DATE_TIME=%DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set /A clock=%RANDOM% %% 80 + 1
set clock=%clock: =0%
Echo on
youtube-dl -r 3M --download-archive dl.txt --playlist-end 1 --hls-use-mpegts --no-part https://www.youtube.com/channel/%token%/live -o %name%_%DATE_TIME%.ts
timeout /t %clock%
goto loop
