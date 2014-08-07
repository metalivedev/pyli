#PyLi Python Package Licenses

This takes the URL to a requirements.txt file and shows the license for each package installed.
If you are referring to a GitHub URL, you should open the requirements.txt file in RAW mode.

Based on a [Stack
Overflow](http://stackoverflow.com/questions/19086030/can-pip-or-setuptools-distribute-etc-list-the-license-used-by-each-install)
answer for how to extract package licenses.

Some packages install versions of *request* that seem to be
incompatibale with pip, so based on [an article on
launchpad](https://bugs.launchpad.net/ubuntu/+source/python-pip/+bug/1306991/comments/11)
we always `easy_install requests==2.2.1`

##Example Usage

```
$ docker run --rm pyli https://raw.githubusercontent.com/metalivedev/dcdumper/master/requirements.txt
argparse, Python Software Foundation License
chardet, LGPL
colorama, BSD
dotcloud, ERROR
html5lib, MIT License
mercurial, GNU GPLv2 or any later version
requests, Copyright 2014 Kenneth Reitz
six, MIT
urllib3, MIT
wsgiref, PSF or ZPL
```
