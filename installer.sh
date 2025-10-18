#!/usr/bin/env bash
set -Eeuo pipefail

# Detect package manager
# if command -v apt >/dev/null 2>&1; then
#   sudo apt update -y
#   sudo apt install -y ffmpeg v4l-utils
# elif command -v dnf >/dev/null 2>&1; then
#   sudo dnf install -y ffmpeg v4l2-tools || true
# elif command -v pacman >/dev/null 2>&1; then
#   sudo pacman --noconfirm -Sy ffmpeg v4l-utils
# fi

# Create data dir
mkdir -p ./data

# Make main executable
chmod +x ./capture.sh

# Install systemd units
if pidof systemd >/dev/null 2>&1; then
  svc=/etc/systemd/system/scheduled-camera.service
  tmr=/etc/systemd/system/scheduled-camera.timer
  def=/etc/default/scheduled-camera

  # Write default env if not exists
  if [[ ! -f "$def" ]]; then
    sudo install -Dm644 /dev/stdin "$def" <<'ENVEOF'
CAM_DEVICE=/dev/video0
CAM_SIZE=1280x720
CAM_FLIP=none
OUT_DIR=%EHOME/scheduled_camera/data
ENVEOF
  fi

  # Write service
  sudo install -Dm644 /dev/stdin "$svc" <<'SRVEOF'
[Unit]
Description=Scheduled Camera - single shot

[Service]
Type=oneshot
EnvironmentFile=-/etc/default/scheduled-camera
WorkingDirectory=%EHOME/scheduled_camera
ExecStart=%EHOME/scheduled_camera/capture.sh
SRVEOF

  # Write timer (every minute; edit as needed)
  sudo install -Dm644 /dev/stdin "$tmr" <<'TMREOF'
[Unit]
Description=Run scheduled-camera.service periodically

[Timer]
OnCalendar=*:0/1
Persistent=true
Unit=scheduled-camera.service

[Install]
WantedBy=timers.target
TMREOF

  sudo systemctl daemon-reload
  sudo systemctl enable --now scheduled-camera.timer
  echo "[OK] systemd timer enabled. Use: journalctl -u scheduled-camera -e"
else
  echo "[INFO] systemd not detected. Use cron or run ./capture.sh manually."
fi
