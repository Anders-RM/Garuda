#! /bin/bash
garuda-update
sudo pacman -Sy --noconfirm libhandy
sudo pacman -Sy --noconfirm flatpak
sudo pacman -Sy --noconfirm appstream-glib
git clone https://aur.archlinux.org/archlinux-appstream-data-pamac.git
cd archlinux-appstream-data-pamac
makepkg -si --noconfirm
cd ..
rm -dfr archlinux-appstream-data-pamac

git clone https://aur.archlinux.org/snapd-glib.git
cd snapd-glib
makepkg -si --noconfirm
cd ..
rm -dfr snapd-glib

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
cd ..
rm -dfr snapd

git clone https://aur.archlinux.org/libpamac-full.git
cd libpamac-full
makepkg -si --noconfirm
cd ..
rm -dfr libpamac-full

git clone https://aur.archlinux.org/pamac-all.git
cd pamac-all
makepkg -si --noconfirm
cd ..
rm -dfr pamac-all

sudo pacman -Sy --noconfirm git
sudo pacman -Sy --noconfirm yakuake
sudo pacman -Sy --noconfirm firefox
sudo pacman -Sy --noconfirm opera
sudo pacman -Sy --noconfirm steam
sudo pacman -Sy --noconfirm libreoffice-fresh
sudo pacman -Sy --noconfirm piper
sudo pacman -Rsu --noconfirm octopi
sudo pacman -Rsu --noconfirm latte-dock
flatpak install -y flathub com.yubico.yubioath
flatpak install -y flathub tv.plex.PlexDesktop
flatpak install -y flathub org.qbittorrent.qBittorrent
sudo pamac install --no-confirm visual-studio-code-bin
sudo pamac install --no-confirm opera-ffmpeg-codecs 
sudo pamac remove --no-confirm firedragon-extension-plasma-integration firedragon

#git config
ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "Anders_RMathiesen@pm.me" <<<y >/dev/null 2>&1
git config --global user.email "Anders_RMathiesen@pm.me"
git config --global user.name "Anders-RM"

sudo mkdir -p ~/.local/share/kservices5/ServiceMenus
sudo mv up-shutdown /usr/bin/
sudo mv upgrade-all /usr/bin/
sudo mv proton-ge /usr/bin/
sudo mv open_as_root.desktop ~/.local/share/kservices5/ServiceMenus

lookandfeeltool -a Sweet
sudo lookandfeeltool -a Sweet
sed -i 's/BorderlessMaximizedWindows=true/BorderlessMaximizedWindows=false/' ~/.config/kwinrc


rm ~/.config/autostart/octopi-notifier.desktop
rm ~/.config/autostart/org.kde.latte-dock.desktop
sudo cp /usr/share/applications/org.kde.yakuake.desktop ~/.config/autostart/org.kde.yakuake.desktop

sed -n 's/if status --is-interactive && type -q fastfetch
/#if status --is-interactive && type -q fastfetch
/' ~/.config/fish/config.fish

sed -n 's/   fastfetch --load-config neofetch
/#   fastfetch --load-config neofetch
/' ~/.config/fish/config.fish

sed -n 's/end
/#end
/' ~/.config/fish/config.fish


#if status --is-interactive && type -q fastfetch
#   fastfetch --load-config neofetch
#end

sudo useradd ssh
sudo passwd ssh
sudo bash -c 'echo "[Users]
HideUsers=ssh" >> /etc/sddm.conf'

#logout
qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3