# [Scheduled Camera](https://github.com/europanite/scheduled_camera "Scheduled Camera")

---

### 1. Prerequisites
- Debian OS & Camera

### 2. Start the service:

### install
```bash
bash installer.sh
```

### One-shot test
```bash
bash capture.sh
```

### How to use

```bash
bash installer.sh
systemctl status scheduled-camera.timer
journalctl -u scheduled-camera -e
```

# License
- Apache License 2.0