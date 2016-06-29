### ML with Python Comp Setup

```
git config --global user.name "Namey McNamerson"
git config --global user.email "namey@gmail.com"
```

- generate ssh keys
- add to github

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
