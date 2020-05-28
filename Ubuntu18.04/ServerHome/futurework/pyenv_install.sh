#!/bin/bash
# 事前準備
sudo apt install -y build-essential # c++コンパイラ
sudo apt install -y libffi-dev
sudo apt install -y libssl-dev # openssl
sudo apt install -y zlib1g-dev
sudo apt install -y liblzma-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev # bz2, readline, sqlite3

# pyenv本体のダウンロードとインストール
sudo apt install -y git
# git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
# .bashrcの更新
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv -v # pyenvがインストールできたかを確認

exit 0
# pythonのインストール
pyenv install 3.6.8 # 例えば，version 3.6.8
pyenv versions # インストール済みのpyenvのバージョンを確認できる
# pyenv local 3.6.8 (任意のディレクトリで実行)


exit 0
# https://teratail.com/questions/150301
sudo apt-get install -y --no-install-recommends \
        build-essential \
        wget \
        libssl-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        git
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

curl https://pyenv.run | bash

# https://qiita.com/pdv/items/1107bcdca7fa43de673d
# 事前準備
sudo apt install -y build-essential # c++コンパイラ
sudo apt install -y libffi-dev
sudo apt install -y libssl-dev # openssl
sudo apt install -y zlib1g-dev
sudo apt install -y liblzma-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev # bz2, readline, sqlite3

# pyenv本体のダウンロードとインストール
sudo apt install -y git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

exit 0
# .bashrcの更新
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.profile

vim ~/.profile
source ~/.profile

pyenv -v # pyenvがインストールできたかを確認
which pyenv
# pythonのインストール
pyenv install --list
echo -n Which python version do you want in pyenv?:
read python_ver
echo "installing $python_ver version pyenv..."

pyenv install $python_ver # 例えば，version 3.6.8
pyenv rehash
pyenv versions # インストール済みのpyenvのバージョンを確認できる
# pyenv local 3.6.8 (任意のディレクトリで実行))'")"''""''""'
pyenv global $python_ver
which pyenv
pyenv versions
pyenv global $python_ver
pip install --upgrade pip

exit 0
# https://qiita.com/shigechioyo/items/198211e84f8e0e9a5c18
echo install pyenv-virtualenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv)

echo "echo"
