#!/bin/bash

# MANUALLY INSTALL
#
# chrome
# xcode command line developer tools (includes git)
# zsh
# nValt

# ############################################################################
# BREW SETUP
# ############################################################################

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo -v # ask for password only at the beginning

brew update
brew upgrade
brew tap homebrew/versions
brew tap phinze/homebrew-cask
brew install brew-cask

# PIP
mkdir tmp && cd tmp
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
sudo python get-pip.py # did i do a bad doing this
cd ../ && rm -r tmp

# ############################################################################
# Python
# ############################################################################

brew install python # if we don't do this early on, we'll symlink everything to the system python which is bad

# ############################################################################
# GIT
# ############################################################################

brew install git
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL ADDRESS"

git credential-osxkeychain
curl -s -O \
https://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
sudo mv git-credential-osxkeychain \
"$(dirname $(which git))/git-credential-osxkeychain"
# ENTER SYS PWD
git config --global credential.helper osxkeychain

# ############################################################################
# Packages
# ############################################################################

brew install imagemagick
brew install legit
legit install
brew install qt
brew install wget --enable-iri
brew install readline
brew install sqlite
brew install gdbm
brew install pkg-config
brew install gcc
brew install freetype
brew install libpng
brew install pyqt
brew install zmq
brew install inkscape
brew install phantomjs

# ohmyzsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


# ############################################################################
# COCOA APPS
# ############################################################################

# Still missing:
# ngrok : https://dl.ngrok.com/darwin_amd64/ngrok.zip
# xquartz

brew cask install onepassword
brew cask install virtualbox
brew cask install skype
brew cask install slate
brew cask install vagrant
brew cask install sublime-text
brew cask install spotify
brew cask install slack
brew cask install google-chrome
brew cask install daisydisk
#brew cask install dropbox
brew cask install firefox
brew cask install github
brew cask install nvalt
brew cask install codekit
brew cask install totalterminal
brew cask install vlc
brew cask install transmission
brew cask install shadowsweeper
brew cask install plug

brew cleanup

# Bind sublime and drop in settings
mkdir -p ~/bin
ln -s /opt/homebrew-cask/Caskroom/sublime-text/2.0.2/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl ~/bin/subl


# ############################################################################
# FONTS
# ############################################################################

brew tap caskroom/fonts
brew cask instal font-source-code-pro
brew cask instal font-source-sans-pro

# ############################################################################
# PYTHON
# ############################################################################

# From http://www.lowindata.com/2013/installing-scientific-python-on-mac-os-x/
pip install virtualenv
pip install virtualenvwrapper
pip install numpy

pip install simplejson
# Or:
# git clone https://github.com/numpy/numpy.git
# pushd numpy
# python setup.py build
# python setup.py install
# pop
python -c "import numpy; print '\x1b[36mNumpy {} installed in {}\x1b[39m'.format(numpy.__version__, numpy.__file__)"
pip install scipy
# OR:
# git clone https://github.com/scipy/scipy.git
# pushd scipy
# python setup.py build
# python setup.py install
# pop
python -c "import scipy; print '\x1b[36mscipy {} installed in {}\x1b[39m'.format(scipy.__version__, scipy.__file__)"

pip install pyparsing
pip install -U  -e git+https://github.com/matplotlib/matplotlib#egg=matplotlib-dev
pip install ipython

# Install QT Binaries from http://download.qt-project.org/official_releases/qt/5.1/5.1.1/qt-mac-opensource-5.1.1-clang-offline.dmg

# install the QT libraries as described
# in the text below before continuing
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
pip install pyzmq
pip install pygments
pip install dateutils
pip install jinja2

# UTILITIES
pip install youtube-dl

# SCRAPING
pip install scrapy

# SPELLING
pip install pyenchant

# ML
pip install gensim

#....
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PATH=/usr/local/share/python:$PATH

source /usr/local/share/python/virtualenvwrapper.sh

mkdir bin
ln -s "../../Applications/Sublime\ Text.app/Contents/SharedSupport/bin" ~/bin/subl

