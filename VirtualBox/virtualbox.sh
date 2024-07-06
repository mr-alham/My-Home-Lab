# VirtualBox

sudo echo "[virtualbox]
name=Fedora \$releasever - \$basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/\$releasever/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox_2016.asc" > /etc/yum.repos.d/virtualbox.repo

sudo dnf install VirtualBox -y

sudo rpm --import oracle_vbox_2016.asc

sudo dnf install akmod-VirtualBox -y

sudo dnf kernel-devel-$(uname -r)

sudo mkdir -p /opt/VirtualBox && sudo chown alham /opt/VirtualBox && sudo chgrp alham /opt/VirtualBox

sudo adduser $USER vboxusers

sudo usermod -aG vboxusers $USER

sudo systemctl restart vboxdrv.service

sudo dnf install kernel-devel-`uname -r` -y

newgrp vboxusers

systemctl restart vboxdrv
