#! /bin/bash
sudo garuda-update
sudo yay -S --noconfirm pamac-all
sudo pacman -Sy --noconfirm git
sudo pacman -Sy --noconfirm yakuake
sudo pacman -Rsu --noconfirm octopi
sudo pamac install --no-confirm visual-studio-code-bin
sudo pacman -Sy --noconfirm firefox
sudo pacman -Sy --noconfirm opera
sudo pamac install --no-confirm opera-ffmpeg-codecs 
flatpak install -y flathub tv.plex.PlexDesktop
sudo pacman -Sy --noconfirm steam
sudo pacman -Sy --noconfirm libreoffice-fresh
flatpak install -y flathub org.qbittorrent.qBittorrent
flatpak install -y flathub com.yubico.yubioath
sudo pamac install --no-confirm onedriver
sudo pacman -Sy --noconfirm piper
sudo pacman -Rsu --noconfirm latte-dock

#git config
ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "andersrm1808@gmial.com" <<<y >/dev/null 2>&1
git config --global user.email "andersrm1808@gmial.com"
git config --global user.name "anddersrm1808"

mkdir -p ~/.local/share/kservices5/ServiceMenus
mv up-shutdown /usr/bin/
mv upgrade-all /usr/bin/
mv open_as_root.desktop ~/.local/share/kservices5/ServiceMenus

lookandfeeltool -a Sweet
sudo lookandfeeltool -a Sweet
sed -i 's/BorderlessMaximizedWindows=true/BorderlessMaximizedWindows=false/' ~/.config/kwinrc

cp /usr/share/applications/org.kde.yakuake.desktop ~/.config/autostart/org.kde.yakuake.desktop

#logout
qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3

