cookbooks = \
	redisio git://github.com/brianbianco/redisio.git \
	nodejs git://github.com/mdxp/nodejs-cookbook.git \
	git git://github.com/opscode-cookbooks/git.git \
	build-essential git://github.com/opscode-cookbooks/build-essential.git \
	apt git://github.com/opscode-cookbooks/apt.git \
	python git://github.com/opscode-cookbooks/python.git \
	dmg git://github.com/opscode-cookbooks/dmg.git \
	runit git://github.com/opscode-cookbooks/runit.git \
	yum git://github.com/opscode-cookbooks/yum.git \
	windows git://github.com/opscode-cookbooks/windows.git \
	vim git://github.com/opscode-cookbooks/vim.git \
	ruby_build git://github.com/fnichol/chef-ruby_build.git 

cookbooksDir='cookbooks'

all: clean build 

clean:
	rm -rf $(cookbooksDir)

dir:
	mkdir -p $(cookbooksDir)

clone:
	git clone git://github.com/brianbianco/redisio.git $(cookbooksDir)/redisio && \
	git clone git://github.com/mdxp/nodejs-cookbook.git $(cookbooksDir)/nodejs && \
	git clone git://github.com/opscode-cookbooks/git.git $(cookbooksDir)/git && \
	git clone git://github.com/opscode-cookbooks/build-essential.git $(cookbooksDir)/build-essential && \
	git clone git://github.com/opscode-cookbooks/apt.git $(cookbooksDir)/apt && \
	git clone git://github.com/opscode-cookbooks/python.git $(cookbooksDir)/python && \
	git clone git://github.com/opscode-cookbooks/dmg.git $(cookbooksDir)/dmg && \
	git clone git://github.com/opscode-cookbooks/runit.git $(cookbooksDir)/runit && \
	git clone git://github.com/opscode-cookbooks/yum.git $(cookbooksDir)/yum && \
	git clone git://github.com/opscode-cookbooks/windows.git $(cookbooksDir)/windows && \
	git clone git://github.com/opscode-cookbooks/vim.git $(cookbooksDir)/vim && \
	git clone git://github.com/fnichol/chef-ruby_build.git $(cookbooksDir)/ruby_build 
	
cookbooks: dir clone

.PHONY: all clean cookbooks dir clone
