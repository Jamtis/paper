# fix openssl to fetch remote bib files
# https://stackoverflow.com/questions/72133316/libssl-so-1-1-cannot-open-shared-object-file-no-such-file-or-directory
mkdir temp
cd temp
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.17_amd64.deb
dpkg -i libssl1.1_1.1.1f-1ubuntu2.17_amd64.deb
cd ..
rm -r temp

# fix docker issue
cd /var/lib/dpkg/info
rm usrmerge.*

git submodule update --init --recursive

lsb_release -a
add-apt-repository universe multiverse
hwe-support-status --verbose

apt update
apt install qpdf -y
apt -y upgrade
apt -y autoclean
apt -y autoremove