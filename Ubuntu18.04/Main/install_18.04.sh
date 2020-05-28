echo "when you use from the first time, please erase COMMENTOUT!"
<< COMMENTOUT

# update
# package info
sudo apt update
# package
sudo apt upgrade -y

# update libreoffice
sudo add-apt-repository -y -n ppa:libreoffice/ppa
sudo apt update
sudo apt dist-upgrade
# install vim
sudo apt-get installi vim
# remove 
sudo apt remove -y ubuntu-web-launchers
# please change IME manually for dot and blank chrome

# change home/japanese_dir to home/english_dir
# https://qiita.com/taiko19xx/items/d1a001bfc25245b91354
LANG=C xdg-user-dirs-gtk-update

# default nano to vim
ls -la /usr/bin/editor
ls -la /etc/alternatives/editor
sudo update-alternatives --config editor

# https://qiita.com/iganari/items/587c330a62e52023679d

# alternative editor (/usr/bin/editor を提供) には 4 個の選択肢があります。
# 
#   選択肢    パス              優先度  状態
# ------------------------------------------------------------
# * 0            /bin/nano            40        自動モード
#   1            /bin/ed             -100       手動モード
#   2            /bin/nano            40        手動モード
#   3            /usr/bin/vim.basic   30        手動モード
#   4            /usr/bin/vim.tiny    15        手動モード
# 
# 現在の選択 [*] を保持するには <Enter>、さもなければ選択肢の番号のキーを押してください: 3
# update-alternatives: /usr/bin/editor (editor) を提供するためにマニュアルモードで /usr/bin/vim.basic を使います
# 

# molokai
sudo apt-get install git
mkdir ~/.vim
mkdir ~/.vim/colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/

# tmux
sudo apt-get install tmux


# slack
echo "don't sudo apt-get install slack, it's different from ours.''"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.3-amd64.deb
sudo apt install ./slack-desktop-4.4.3-amd64.deb


# font
# gsettings list-recursively org.gnome.desktop.interface | grep font
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 16'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans CJK JP 12'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans CJK JP 12'


# sudo apt-get install make
echo "automatic... : slack, tmux, vim, git, "
echo "to do : github config"
echo "manual please...: ,print driver, IME blank and blank, vimrc, slack sign in, firefox


# yuka-ko@yukako-ThinkPad-T460s:~/Downloads$ sudo dpkg -i --force-all brgenml1lpr-3.1.0-1.i386.deb
# 
# 以前に未選択のパッケージ brgenml1lpr:i386 を選択しています。
# (データベースを読み込んでいます ... 現在 190450 個のファイルとディレクトリがインストールされています。)
# brgenml1lpr-3.1.0-1.i386.deb を展開する準備をしています ...
# brgenml1lpr:i386 (3.1.0-1) を展開しています...
# brgenml1lpr:i386 ()))e=150%,  "
# 
#sudo apt-get update
#sudo apt-get install openvpn
# printer
sudo apt-get install gdebi

# http://note.kurodigi.com/post-0-30/

# vpn
sudo apt-get install openvpn
# read institute pdf and in directory client.ovpn, *.p12
sudo openvpn --config client.ovpn
sudo apt install ffmpeg

# https://qiita.com/wnoguchi/items/f7358a227dfe2640cce3
git config --global user.name "keiouok"
git config --global user.email "ko.yuka.kp2@is.naist.jp"
git config --global core.editor 'vim -c "set fenc=utf-8"'
sudo dpkg -P nano
sudo update-alternatives --config editor
# put color
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --list

# sudo apt-get install zsh

#sudo apt-get update
#sudo apt install google-chrome-stable
# https://www.sejuku.net/blog/82940
# wget https://dl.google.com/google-chrome-stable_current_amd64.deb -O ~/Downloads/google-chrome-stable_current_amd64.deb
echo "download manual in Downloads"
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# down load manually google chrome

# sudo gdebi ~/Downloads/google-chrome-stable_current_amd64.deb

sudo apt-get install google-chrome-stable
COMMENTOUT
#tar -jxvf ~/Downloads/sublime_text_3_build_3211_x64.tar.bz2 ~/Downloads/sublime_text_3

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg
sudo apt-key add -

sudo apt-get install apt-transport-https
