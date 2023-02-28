#! /bin/zsh
sudo garuda-update
sudo yay -S --noconfirm pamac-all
sudo pacman -Sy --noconfirm git
sudo pacman -Sy --noconfirm yakuake
sudo pacman -Rsu --noconfirm octopi
sudo pamac install --noconfirm visual-studio-code-bin
sudo pacman -Rsu --noconfirm latte-dock
sudo pacman -Rsu --noconfirm firefox

#git config
ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "andersrm1808@gmial.com" <<<y >/dev/null 2>&1
git config --global user.email "andersrm1808@gmial.com"
git config --global user.name "anddersrm1808"


mv up-shutdown /usr/bin/
mv upgrade-all /usr/bin/
mv open_as_root.desktop ~/.local/share/kservices5/ServiceMenus

sudo lookandfeeltool -a Sweet
sed -i 's/BorderlessMaximizedWindows=true/BorderlessMaximizedWindows=false/' ~/.config/kwinrc

#logout
qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3