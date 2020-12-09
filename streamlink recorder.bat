:loop
@echo off
set name=%shroud
set name=%name: =0%
echo on
streamlink --hls-segment-threads 5 --retry-streams 40 -o "%name%.ts" https://www.twitch.tv/%name% best
@echo off
set DATE_TIME=%DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set DATE_TIME=%DATE_TIME: =0%
rename  "%name%.ts" %name%_%DATE_TIME%.ts
goto loop