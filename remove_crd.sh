#!/bin/bash

echo "🔍 Checking running services..."
service --status-all

echo "🛑 Stopping Chrome Remote Desktop daemon..."
pkill -f chrome-remote-desktop 2>/dev/null || echo "No daemon running."

echo "🧹 Removing old config files..."
rm -rf ~/.config/chrome-remote-desktop
sudo rm -rf /etc/opt/chrome/remote-desktop

echo "👥 Removing user from chrome-remote-desktop group (if exists)..."
sudo gpasswd -d $USER chrome-remote-desktop 2>/dev/null || echo "User not in group."

echo "📦 Uninstalling Chrome Remote Desktop..."
sudo apt remove chrome-remote-desktop -y
sudo apt autoremove -y

echo "✅ All tasks completed successfully!"
