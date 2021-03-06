### ML with Python Comp Setup

```
git config --global user.name "Namey McNamerson"
git config --global user.email "namey@gmail.com"
```

[generate ssh keys](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

`ssh-keygen -t rsa -b 4096 -C "clarecorthell@gmail.com"`

[add to github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

`pbcopy < ~/.ssh/id_rsa.pub`

### Install Python
`brew install python`

`brew install python3`

pip `curl https://bootstrap.pypa.io/get-pip.py > get-pip.py`

`sudo python get-pip.py`

`pip install -r comp_setup/requirements.txt`

`jupyter notebook --generate-config`

Add to jupyter config file at path `/.jupyter/jupyter_notebook_config.py`

Autoreload
```
c = get_config()
c.InteractiveShellApp.matplotlib = "inline"

c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
c.InteractiveShellApp.exec_lines.append('print("Warning: disable autoreload in ipython_config.py to improve performance.")')
```

### Brigade setup

```
virtualenv --python=$~/usr/local/bin/python3 VE
source VE/bin/activate
brew install gdal --HEAD
pip install -r requirements.txt
```
