<<COMMAND
# in ubuntu, you only use bashrc
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh
# vim ~/.bash_profile
echo "export PATH=~/anaconda3/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
conda -V

conda info -e
conda create -n py36 python=3.6

COMMAND
conda info -e
conda activate py36


