git submodule update --init --recursive
apt update

# fix docker issue
cd /var/lib/dpkg/info
rm usrmerge.*

apt -y upgrade
apt -y autoclean
apt -y autoremove