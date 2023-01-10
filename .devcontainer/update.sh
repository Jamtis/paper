apt update
apt install qpdf -y
rm /var/lib/dpkg/info/usrmerge.*
apt -y upgrade
apt -y autoclean
apt -y autoremove
git submodule update --init --recursive