#!/bin/sh

# added missing symlink
`test ! -x /usr/bin/ruby && ln -s /opt/vagrant_ruby/bin/ruby /usr/bin/ruby`

# install ctags
if [ -x /usr/bin/apt-get ]; then
    apt-get install ctags
fi

# configure environment
su vagrant -c 'test ! -d ~/.termrc && git clone git://github.com/michalbachowski/termrc.git ~/.termrc && cd ~/.termrc && /bin/bash init.sh'
  
# configure vim
su vagrant -c 'test ! -d ~/.vimper && git clone git://github.com/michalbachowski/vimper.git ~/.vimper && cd ~/.vimper && python bootstrap.py'

exit 0
