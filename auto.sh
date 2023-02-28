#! /bin/bash
garuda-update
sudo pacman -Sy --noconfirm libhandy

git clone https://aur.archlinux.org/libpamac-full.git
cd libpamac-ful
makepkg -si
cd ..

git clone https://aur.archlinux.org/pamac-all.git
cd pamac-all
makepkg -si

# sudo pacman -Sy --noconfirm git
# sudo pacman -Sy --noconfirm yakuake
# sudo pacman -Sy --noconfirm firefox
# sudo pacman -Sy --noconfirm opera
# sudo pacman -Sy --noconfirm steam
# sudo pacman -Sy --noconfirm libreoffice-fresh
# sudo pacman -Sy --noconfirm piper
# sudo pacman -Rsu --noconfirm octopi
# sudo pacman -Rsu --noconfirm latte-dock
# sudo pamac install --no-confirm onedriver
# flatpak install -y flathub com.yubico.yubioath
# flatpak install -y flathub tv.plex.PlexDesktop
# flatpak install -y flathub org.qbittorrent.qBittorrent
# sudo pamac install --no-confirm visual-studio-code-bin
# sudo pamac install --no-confirm opera-ffmpeg-codecs 

# #git config
# ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "andersrm1808@gmial.com" <<<y >/dev/null 2>&1
# git config --global user.email "andersrm1808@gmial.com"
# git config --global user.name "anddersrm1808"

# mkdir -p ~/.local/share/kservices5/ServiceMenus
# mv up-shutdown /usr/bin/
# mv upgrade-all /usr/bin/
# mv open_as_root.desktop ~/.local/share/kservices5/ServiceMenus

# lookandfeeltool -a Sweet
# sudo lookandfeeltool -a Sweet
# sed -i 's/BorderlessMaximizedWindows=true/BorderlessMaximizedWindows=false/' ~/.config/kwinrc


# rm ~/.config/autostart/octopi-notifier.desktop
# rm ~/.config/autostart/org.kde.latte-dock.desktop
# cp /usr/share/applications/org.kde.yakuake.desktop ~/.config/autostart/org.kde.yakuake.desktop

# sudo useradd -m ssh
# sudo passwd ssh
# sudo bash -c 'echo "[Users]
# HideUsers=ssh" >> /etc/sddm.conf'

# #logout
# qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3