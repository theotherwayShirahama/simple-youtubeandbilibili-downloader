@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul
title Smart Video Downloader v6.8

REM ===== 默认下载目录：桌面 =====
set "OUTDIR=%USERPROFILE%\Desktop"

:START
cls
echo ===================================
echo    Smart Video Downloader 
echo ===================================
echo Download location: !OUTDIR!
echo -----------------------------------
echo Paste video URL (or type exit to quit)
echo.

set "url="
set /p "url=URL: "

if /i "!url!"=="exit" goto END
if "!url!"=="" goto START

echo.
echo Analyzing URL...
echo.

REM ===== YouTube =====
echo "!url!" | findstr /i "youtube.com youtu.be" >nul
if !errorlevel!==0 (
    echo Detected: YouTube video or playlist
    echo Downloading BEST quality + subtitles...
    echo.

    yt-dlp.exe --cookies cookies.txt -f "bestvideo+bestaudio/best" --merge-output-format mp4 --write-subs --write-auto-subs --sub-lang en,zh-Hans,zh-Hant --convert-subs srt -o "!OUTDIR!\%%(upload_date)s - %%(title)s.%%(ext)s" "!url!"

    echo.
    echo Download finished.
    pause
    goto START
)

REM ===== Bilibili =====
echo "!url!" | findstr /i "bilibili.com b23.tv" >nul
if !errorlevel!==0 (
    echo Detected: Bilibili video
    echo Downloading BEST quality + subtitles...
    echo.

    yt-dlp.exe --cookies cookies.txt -f "bestvideo+bestaudio/best" --merge-output-format mp4 --write-subs --write-auto-subs --convert-subs srt -o "!OUTDIR!\%%(upload_date)s - %%(title)s.%%(ext)s" "!url!"

    echo.
    echo Download finished.
    pause
    goto START
)

REM ===== Fallback =====
echo Unknown site, trying generic download...
echo.

yt-dlp.exe --cookies cookies.txt -f "bestvideo+bestaudio/best" --merge-output-format mp4 --write-subs --write-auto-subs --convert-subs srt -o "!OUTDIR!\%%(upload_date)s - %%(title)s.%%(ext)s" "!url!"

echo.
echo Download finished.
pause
goto START

:END
echo Bye.
pause
exit
