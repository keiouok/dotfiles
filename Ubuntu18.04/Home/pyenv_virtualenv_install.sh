#!/bin/bash
#<<COMMENTOUT
#sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
#libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
#xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
#curl https://pyenv.run | bash
#sudo apt update
#sudo apt install -y git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv


# https://teratail.com/questions/153402

echo 'export PATH="/home/yuka-ko/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

vim ~/.bashrc
echo 'export PATH="/home/yuka-ko/.pyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

vim ~/.bash_profile


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install -l
source ~/.bashrc
echo 'export PATH="/home/yuka-ko/.local/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc

pyenv install -l | grep anaconda
pyenv install anaconda3-2020.02
pyenv global anaconda3-2020.02

pip install --upgrade pip
python --version
# this is only for virtualenv
pip install virtualenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# COMMENTOUT

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
vim ~/.bash_profile
vim ~/.bashrc

source ~/.bashrc
source ~/.bash_profile
# maybe it doesn't implemented, please do it yourself again

#pyenv virtualenv anaconda3-2020.02 virtual37
# if you want to use pyenv pip list, 
# --system-site-package
#pyenv virtualenv --system-site-packages anaconda3-2020.02 co-virtual37

pyenv versions

echo "please source bachrc and bash_profile again"
echo "you can 'pyenv virtual env newenv'"
# pyenv virtualenv anaconda3-2020.02 OpenNMT-py

# about virtual env
# https://maku77.github.io/python/env/virtualenv.html

