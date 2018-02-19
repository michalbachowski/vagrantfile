#!/bin/sh

# install core packages
if [ -x $(which apt-get) ]; then
    # old Python versions
    sudo add-apt-repository ppa:deadsnakes/ppa

    # update packages
    apt-get update

    # Pythons
    apt-get install --assume-yes \
        python-pip \
        software-properties-common \
        python3.1 python3.1-minimal \
        python3.3 python3.3-minimal \
        python3.5 python3.5-minimal
fi

# install python packages
if [ -x $(which pip) ]; then
    pip install --upgrade pip
    pip install 'tox==2.7.0' -r/home/vagrant/app/test/requirements.txt
fi

if [ -x $(which cpan) ]; then
    # cpan first time config
    if [ ! -d ~/.cpan ]; then
        (echo) | cpan
    fi
    cpan Test::Exception
fi

# configure environment
if [ ! -d ~/.termrc ]; then
    git clone git://github.com/michalbachowski/termrc.git ~/.termrc && cd ~/.termrc && /bin/bash init.sh;
fi;

# configure vim
if [ ! -d ~/.vimper ]; then
    git clone git://github.com/michalbachowski/vimper.git ~/.vimper && cd ~/.vimper && python bootstrap.py;
fi;

# git config
git config --global color.ui true;
git config --global core.editor vim;

exit 0

