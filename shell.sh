#!/bin/sh

# added missing symlink
`test ! -x /usr/bin/ruby && ln -s /opt/vagrant_ruby/bin/ruby /usr/bin/ruby`

# install ctags
if [ -x /usr/bin/apt-get ]; then
    # ctags
    apt-get install exuberant-ctags 
fi

# configure environment
su vagrant -c 'test ! -d ~/.termrc && git clone git://github.com/michalbachowski/termrc.git ~/.termrc && cd ~/.termrc && /bin/bash init.sh'
  
# configure vim
su vagrant -c 'test ! -d ~/.vimper && git clone git://github.com/michalbachowski/vimper.git ~/.vimper && cd ~/.vimper && python bootstrap.py'

# git config
su vagrant -c 'git config --global color.ui true'

## Node.js modules

# Yeoman
npm install -g yo grunt-cli bower 

# underscore
npm install -g underscore

exit 0
