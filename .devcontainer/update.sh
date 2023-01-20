git submodule update --init --recursive
apt update
apt install qpdf -y
cd /var/lib/dpkg/info
rm usrmerge.*
apt -y upgrade
apt -y autoclean
apt -y autoremove