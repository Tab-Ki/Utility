cd ~/

# alias

echo alias l=\"ls -oghpvA\" >> ~/.bashrc
## use netrw plugin
echo alias v=\"vim .\" >> ~/.bashrc
## source command in ubuntu
source ~/.bashrc

# vim

## enable vim plugin
echo filetype plugin on >> ~/.vimrc
## always open vim in tree view mode
echo let g:netrw_liststyle=3 >> ~/.vimrc
## hide header
echo let g:netrw_banner=0 >> ~/.vimrc
## open file in right side with 'v'
echo let g:netrw_altv=1 >> ~/.vimrc
## open file in right side with 'v'
echo let g:netrw_alto=1 >> ~/.vimrc
## set split window size(%)
echo let g:netrw_winsize=75 >> ~/.vimrc
## turn off all beep (vim)
echo set belloff=all >> ~/.vimrc

mkdir -p .vim

## get vim colorscheme 'hybrid'
git clone https://github.com/w0ng/vim-hybrid.git
mv vim-hybrid/colors .vim/
rm -rf vim-hybrid

echo set background=dark >> ~/.vimrc
echo syntax enable >> ~/.vimrc
echo colorscheme hybrid >> ~/.vimrc

# C++
sudo apt -y -qq update
sudo apt -y -qq upgrate

sudo apt -y -qq install g++
sudo apt -y -qq install gcc
sudo apt -y -qq install make
sudo apt -y -qq install libboost-all-dev

# Python
sudo apt -y -qq install python3-pip
sudo apt -y -qq install python3-venv
python3 -m pip install --upgrade pip

# turn off the beep
if [ ! -e ~/.inputrc ]; then
  touch ~/.inputrc
fi

echo "set bell-style none" >> ~/.inputrc
