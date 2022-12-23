# basics
sudo apt install golang-go vim tmux -y

# libbpf and libbpf-go dependencies
sudo apt install clang make libelf-dev libbpf-dev linux-tools-5.15.0-56-generic -y

git submodule init
git submodule update

# install libbpf
cd libbpf; cd src; make
KG_CONFIG_PATH=/build/root/lib64/pkgconfig
DESTDIR=/build/root
sudo make install

cd ../../libbpf-go
make all
