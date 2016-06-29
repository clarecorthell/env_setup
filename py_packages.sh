# python packages

brew install git
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

pip install virtualenv
pip install virtualenvwrapper
pip install numpy

python -c "import numpy; print '\x1b[36mNumpy {} installed in {}\x1b[39m'.format(numpy.__version__, numpy.__file__)"
pip install scipy

python -c "import scipy; print '\x1b[36mscipy {} installed in {}\x1b[39m'.format(scipy.__version__, scipy.__file__)"

pip install pyparsing
pip install -U  -e git+https://github.com/matplotlib/matplotlib#egg=matplotlib-dev
pip install ipython

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
pip install pyzmq
pip install pygments
pip install dateutils
pip install jinja2

# clare
pip install statistics

# ipython http://ipython.org/ipython-doc/dev/config/intro.html#setting-configurable-options
ipython profile create default
echo "c.InteractiveShellApp.extensions = ['autoreload']" >> ~/.ipython/profile_default/ipython_config.py
echo "c.InteractiveShellApp.exec_lines = ['%autoreload 2']" >> ~/.ipython/profile_default/ipython_config.py

# echo "alias ipy='ipython notebook --matplotlib --script --port 9001'" >> ~

pip install tornado

pip install cactus

### Ruby
sudo curl -L https://get.rvm.io | bash -s stable —ruby

rvm install ruby-2.1.3
rvm reload
