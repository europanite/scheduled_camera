# [Scheduled Camera](https://github.com/europanite/scheduled_camera "Scheduled Camera")

An automated camera capture system for Linux that periodically takes snapshots from a USB camera using `ffmpeg` or `v4l2`.  

It is designed for **headless servers, IoT devices, and time-lapse photography setups**, requiring no GUI or heavy dependencies.

---

## 📸 Overview

**Scheduled Camera** runs either as a `systemd` timer or via `cron`, automatically capturing images at fixed intervals.  
It supports **custom camera devices, resolutions, flips, formats, and JPEG quality settings** through environment variables or `.env` files.

---

## 🧩 Features

- 📅 Runs automatically via `systemd.timer` or `crontab`
- 🎥 Captures a single JPEG image per run using `ffmpeg`
- ⚙️ Fully configurable via `.env` or environment variables
- 🔄 Optional horizontal/vertical flip and format control
- 💾 Organized output directory by date
- 🧠 Safe shell scripting with `set -Eeuo pipefail`
- 🧩 Includes installer and cleanup logic for `systemd`

---

## 🧰 Prerequisites

- Linux (Debian / Ubuntu recommended)
- A working USB camera at `/dev/video0`
- Installed dependencies:
  ```bash
  sudo apt install ffmpeg v4l-utils -y
  
---

### install
```bash
bash installer.sh
```

### One-shot test
```bash
bash capture.sh
```

# License
- Apache License 2.0