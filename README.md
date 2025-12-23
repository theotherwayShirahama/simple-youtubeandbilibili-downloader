# simple-youtubeandbilibili-downloader
A Windows batch video downloader based on yt-dlp. Supports single videos, playlists, collections, and entire channels. Automatically downloads the best available quality and saves subtitles (embedded first, auto-generated as fallback). Simple, reliable, and suitable for batch archiving.
Here is a professional English translation of the provided text:
***
First-Time Use Guide (Installation)

To ensure the tool runs properly and to produce the highest quality video output, please make sure the directory contains the following core components (due to copyright and updates, this repository does not provide them directly):

1. Download the core programs
1) yt-dlp.exe (required):  
   Visit the official yt-dlp release page at https://github.com/yt-dlp/yt-dlp/releases/latest and download yt-dlp.exe.

2) ffmpeg.exe (highly recommended):  
   Used to merge separate video and audio streams into an MP4. Without it, high-quality video may be silent or show black frames.  
   Visit FFmpeg Builds at https://github.com/yt-dlp/FFmpeg-Builds/releases/latest and download ffmpeg-master-latest-win64-gpl.zip. After extracting, locate ffmpeg.exe in the bin folder.

2. Place the files
Place the downloaded yt-dlp.exe and ffmpeg.exe directly in the same folder as this tool (downloader.bat).

✅ Final folder structure should look like this:
📂 Your folder/
├── 📄 downloader.bat  (this tool)
├── ⚙️ yt-dlp.exe      (the one you downloaded)
└── ⚙️ ffmpeg.exe      (the one you downloaded)

***

Tip: If the video is premium content or requires login, please export cookies.txt and place it in the same directory as well.

---
