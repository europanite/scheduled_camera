#!/usr/bin/env bash
# shellcheck disable=SC2155
set -Eeuo pipefail

# ----------------------------
# Scheduled Camera - single shot capture
# ----------------------------
# Config precedence: ENV > .env file > defaults
# Supported ENV:
#   CAM_DEVICE=/dev/video0
#   CAM_SIZE=1280x720
#   CAM_FLIP=none|h|v|hv        # horizontal/vertical/both
#   CAM_FMT=mjpeg|yuyv422|auto
#   OUT_DIR=./data
#   OUT_PREFIX=img
#   JPEG_QUALITY=2              # 2(best)..31(worst), for ffmpeg PNG/JPEG quality mapping
#   WARMUP_MS=300               # wait time to let camera auto-exposure settle
# ----------------------------
CAM_DEVICE=/dev/video0
CAM_SIZE=1280x720
CAM_FMT=auto

CAM_FLIP=none

OUT_DIR=./data
OUT_PREFIX=img
JPEG_QUALITY=2

WARMUP_MS=300



# load .env if present
if [[ -f ".env" ]]; then
  # shellcheck disable=SC2046
  export $(grep -E '^[A-Za-z_][A-Za-z0-9_]*=' .env | xargs -d '\n')
fi

CAM_DEVICE="${CAM_DEVICE:-/dev/video0}"
CAM_SIZE="${CAM_SIZE:-1280x720}"
CAM_FLIP="${CAM_FLIP:-none}"
CAM_FMT="${CAM_FMT:-auto}"
OUT_DIR="${OUT_DIR:-./data}"
OUT_PREFIX="${OUT_PREFIX:-img}"
JPEG_QUALITY="${JPEG_QUALITY:-2}"
WARMUP_MS="${WARMUP_MS:-300}"

# build flip filter
ff_filter="format=auto"
case "$CAM_FLIP" in
  h)  ff_filter="hflip" ;;
  v)  ff_filter="vflip" ;;
  hv) ff_filter="hflip,vflip" ;;
  none|"") ff_filter="null" ;;
  *) echo "[WARN] Unknown CAM_FLIP='$CAM_FLIP' -> no flip"; ff_filter="null" ;;
esac

# optional pixel format
fmt_args=()
if [[ "$CAM_FMT" != "auto" ]]; then
  fmt_args=(-input_format "$CAM_FMT")
fi

# validations
if [[ ! -e "$CAM_DEVICE" ]]; then
  echo "[ERROR] Camera device not found: $CAM_DEVICE" >&2
  exit 1
fi
if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "[ERROR] ffmpeg not found. Please install it." >&2
  exit 1
fi

# warmup (non-blocking-ish): read a few frames to let exposure settle
# We use a tiny sleep; systemd/cron won’t like long warmups.
sleep "$(awk "BEGIN {printf \"%.3f\", $WARMUP_MS/1000}")"

# paths
today="$(date +%Y%m%d)"
ts="$(date +%Y%m%d%H%M%S)"
out_dir="${OUT_DIR}/img_${today}"
mkdir -p "$out_dir"
outfile="${out_dir}/${OUT_PREFIX}_${ts}.png"

# capture one frame
# Notes:
#  -f video4linux2 with -video_size
#  -frames:v 1 for single still
#  -q:v uses JPEG quality for mjpeg path; for raw->jpeg it still applies.
set -x
ffmpeg -hide_banner -loglevel error \
  -f video4linux2 "${fmt_args[@]}" -video_size "$CAM_SIZE" -i "$CAM_DEVICE" \
  -frames:v 1 -vf "$ff_filter" -q:v "$JPEG_QUALITY" "$outfile"
set +x

echo "[OK] Saved: $outfile"
