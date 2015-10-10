VIM=~/.vim
VIMRC=~/.vimrc
SSHDIR=~/.ssh
SSHCONFIG=~/.ssh/config
SCREENRC=~/.screenrc
BASHRC=~/.bashrc
GITCONFIG=~/.gitconfig

all: install

install:
ifneq "$(wildcard $(VIM) )" ""
	mv ~/.vim ~/.vim.old
endif
	cp -rf vim ~/.vim

ifneq "$(wildcard $(VIMRC) )" ""
	mv ~/.vimrc ~/.vimrc.old
endif
	cp -rf vimrc ~/.vimrc

ifneq "$(wildcard $(SSHDIR) )" ""
else
	mkdir ~/.ssh
endif


ifneq "$(wildcard $(SSHCONFIG) )" ""
	mv ~/.ssh/config ~/.ssh/config.old
endif
	cp -rf ssh-config ~/.ssh/config

ifneq "$(wildcard $(SCREENRC) )" ""
	mv ~/.screenrc ~/.screenrc.old
endif
	cp -rf screenrc ~/.screenrc

ifneq "$(wildcard $(BASHRC) )" ""
	mv ~/.bashrc ~/.bashrc.old
endif
	cp -rf bashrc ~/.bashrc

ifneq "$(wildcard $(GITCONFIG) )" ""
	mv ~/.gitconfig ~/.gitconfig.old
endif
	cp -rf gitconfig ~/.gitconfig
