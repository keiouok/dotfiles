#!/bin/bash

# python
echo "Python"
python --version
brew -v
pyenv -v
brew install pyenv
pyenv -v
echo $SHELL
echo "if /bin/bash, below is also ok."
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv install --list
echo "Now, Python 3.6.5 is installing."
pyenv install 3.6.5
pyenv versions
# assign Python as Python 3.6.5
pyenv global 3.6.5
python --version
echo "python install is finished."

# sublime
# command is subl
brew cask install sublime-text
echo "sublime install is finished. Please type subl when you use."

# pycharm
# free version
brew cask install pycharm-ce
# https://stackoverflow.com/questions/27116290/making-pycharm-look-like-sublime-text
# change to sublime color and font
# command is charm .

# vertual environment
# https://qiita.com/fiftystorm36/items/b2fd47cf32c7694adc2e
# python -m venv py36

brew install pyenv-virtualenv
# https://qiita.com/nsas454/items/c5bd3a535205d434234e

# ERROR other version python cannnot installed
# 因みに、現在のmacOSにデフォルトで入っているopensslコマンドの実体はLibreSSL。Homebrewで通常のOpenSSLをインストールできるが、そのままだとパスが通らないため、.bashrc等に以下を記述する必要がある。
# https://blufflog.hatenablog.com/entry/2018/09/25/224259
CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)" pyenv install 3.7.2

# pyenv_vertualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

# https://qiita.com/Kodaira_/items/feadfef9add468e3a85b
# pyenv virtualenv 3.5.0 new_3.5.0
pyenv virtualenv 3.6.5 py36
pyenv exec pip install wheel
pip install --upgrade pip
pip freeze > py36_pip_list.txt
# pip list の保存

# to do
# tex
# pip install
# office
#
brew cask install texstudio
brew cask install mactex-no-gui
