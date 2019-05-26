#!/bin/bash -e

wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tar.xz
tar xJf Python-3.6.3.tar.xz
cd Python-3.6.3
./configure
make
make install
pip3 install --upgrade pip
cd ..
rm -r Python-3.6.3
rm Python-3.6.3.tar.xz