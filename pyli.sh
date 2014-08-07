#!/bin/bash
set -e

if [ "$1" == "" ]
then
    echo "Usage: $0 <URL to requirements.txt>"
    exit -1
fi

wget -qO requirements.txt $1
pip install -qr requirements.txt
# Fix for some versions of pip breaking
easy_install -q requests==2.2.1
pip freeze > packages.txt
python ./dumplicenses.py
