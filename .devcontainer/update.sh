# fix docker issue
cd /var/lib/dpkg/info
rm usrmerge.*

git submodule update --init --recursive

apt update
apt -y upgrade
apt -y autoclean
apt -y autoremove