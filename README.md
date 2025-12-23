# 📽️ Smart Video Downloader

A lightweight, automated Windows batch wrapper for **yt-dlp**.  
Designed to simplify the command-line experience, allowing users to download videos, playlists, and entire channels in the highest available quality with a single click.

<img width="855" height="766" alt="14-10-36" src="https://github.com/user-attachments/assets/d3d07728-02d1-4381-86e5-3d286d21648d" />


## ✨ Key Features

* **📺 All-in-One Downloading**: Seamlessly supports **individual videos**, **playlists**, **collections**, and **entire channels**.
* **💎 Best Quality Assurance**: Automatically selects and merges the best available video and audio streams (supports 4K/8K) into a standard **MP4** container.
* **📝 Intelligent Subtitles**: Automatically extracts official and auto-generated subtitles (en/zh), converts them to **SRT** format, and embeds them.
* **🚀 Optimized for YouTube & Bilibili**: Includes specific parsing logic for major platforms to ensure stable downloads.
* **🍪 Member Access**: Supports `cookies.txt` for downloading age-restricted or premium content.

---

## ⚙️ Installation & Dependencies

To ensure the tool functions correctly (especially for high-resolution video merging), you must download the core dependencies manually.

**Due to rapid updates and licensing, binaries are not included in this repository.**

### Step 1: Download Core Components

1.  **yt-dlp.exe** (Required)  
    Download the latest release from the [official yt-dlp repository](https://github.com/yt-dlp/yt-dlp/releases/latest).

2.  **ffmpeg.exe** (Highly Recommended)  
    *Required for merging separate video and audio streams into MP4.* Download from [FFmpeg Builds](https://github.com/yt-dlp/FFmpeg-Builds/releases/latest) (choose `ffmpeg-master-latest-win64-gpl.zip`). Extract the zip and find `ffmpeg.exe` inside the `bin` folder.

### Step 2: Setup Directory

Place both `yt-dlp.exe` and `ffmpeg.exe` in the **same folder** as `downloader.bat`.

Your folder structure should look like this:

```text
📂 Your-Folder/
├── 📄 downloader.bat   <-- This Tool
├── ⚙️ yt-dlp.exe       <-- Downloaded manually
└── ⚙️ ffmpeg.exe       <-- Downloaded manually
