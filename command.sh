sudo systemctl daemon-reload
sudo systemctl enable --now scheduled-camera.timer
systemctl list-timers | grep scheduled-camera
