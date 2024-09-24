git submodule update --init --recursive --remote

# fix docker issue
cd /var/lib/dpkg/info
rm usrmerge.*

apt-get update
apt-get -y upgrade
apt-get -y autoclean
apt-get -y autoremove