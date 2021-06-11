#!/bin/sh
set h=%time:~0,2%
set h=%h: =0%
set bak_filename=%date:~0,4%%date:~5,2%%date:~8,2%-%h%:%time:~3,2%:%time:~6,2%

echo time %bak_filename%

REM timestr=$(date +"%Y-%m-%d %T")
git add . 
git commit -m "$bak_filename"
git push -u origin master
pause