sudo apt update

sudo apt upgrade python3 python3-pip

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.13  
python3 -m pip install --upgrade pip

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.13 1
sudo update-alternatives --config python3


#sudo apt install python3.13-distutils
#curl -sS https://bootstrap.pypa.io/get-pip.py | python3.13


