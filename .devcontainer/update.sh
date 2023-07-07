# fix docker issue
cd /var/lib/dpkg/info
rm usrmerge.*

git submodule update --init --recursive --remote

apt-get update
apt-get -y upgrade
apt-get -y autoclean
apt-get -y autoremove