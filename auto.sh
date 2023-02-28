#! /bin/zsh
sudo pacman -Syu --noconfirm
sudo pacman -Sy git --noconfirm
sudo pacman -Sy yakuake --noconfirm
sudo pamac install visual-studio-code-bin --noconfirm

#git config
ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "andersrm1808@gmial.com" <<<y >/dev/null 2>&1
git config --global user.email "andersrm1808@gmial.com"
git config --global user.name "anddersrm1808"


mv up-shutdown /usr/bin/
mv upgrade-all /usr/bin/


#logout
qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3