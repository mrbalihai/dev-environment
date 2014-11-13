#!/usr/bin/env bash

USERNAME = "vagrant"

# Install dev tools
    apt-get update
    apt-get install -y sudo
    apt-get install -y curl

    # Set up node installation
    curl -sL https://deb.nodesource.com/setup | sudo bash -

    apt-get install -y git
    apt-get install -y vim
    apt-get install -y tmux
    apt-get install -y wget
    apt-get install -y openssh-server
    apt-get install -y python-dev
    apt-get install -y rubygems
    apt-get install -y ruby-dev
    apt-get install -y nodejs
    apt-get install -y build-essential

    # Install node packages
    npm install -g gulp
    npm install -g jshint
    npm install -g mocha

    # Install ruby packages
    gem install tmuxinator
    gem install t

# Hook up my dotfiles
    USER_HOME=$(getent passwd $USERNAME | cut -d: -f6)

    # clone the dotfiles
    git clone https://github.com/RobBollons/dev-environment.git $USER_HOME/.dev-environment

    # Make the dir scructure
    rm $USER_HOME/.bashrc
    mkdir -p $USER_HOME/.vim/bundle
    mkdir -p $USER_HOME/.tmux/plugins
    mkdir -p $USER_HOME/.bin

    # symlink the dotfiles from the repo
    ln -s $USER_HOME/.dev-environment/_bashrc $USER_HOME/.bashrc
    ln -s $USER_HOME/.dev-environment/_bash_profile $USER_HOME/.bash_profile
    ln -s $USER_HOME/.dev-environment/_vimrc $USER_HOME/.vimrc
    ln -s $USER_HOME/.dev-environment/_vim/config/ $USER_HOME/.vim/config
    ln -s $USER_HOME/.dev-environment/_gitconfig $USER_HOME/.gitconfig
    ln -s $USER_HOME/.dev-environment/_git_template/ $USER_HOME/.git_template
    ln -s $USER_HOME/.dev-environment/_tmux.conf $USER_HOME/.tmux.conf
    ln -s $USER_HOME/.dev-environment/_tmuxinator/ $USER_HOME/.tmuxinator

# Arbitrary scripts
    # Git PS1 script
    wget -O $USER_HOME/.bin/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

    # tmuxinator completion
    wget -O $USER_HOME/.bin/tmuxinator.bash https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash

    # a script that helps easier session management in vim
    wget -O $USER_HOME/.bin/vims https://gist.githubusercontent.com/RobBollons/9b00bcb1e171892dc0b6/raw/383f218fe5d92796b2e93e0d70f6aed8177aeac3/vims

    # t completion
    wget -O $USER_HOME/.bin/t-completion.sh https://raw.githubusercontent.com/sferik/t/master/etc/t-completion.sh

# Install tmux plugins
    cd $USER_HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm
    git clone https://github.com/tmux-plugins/tmux-resurrect
    git clone https://github.com/jimeh/tmux-themepack


# Install and build Vim plugins
    cd $USER_HOME/.vim/bundle

    # Bundle Manager
    git clone https://github.com/gmarik/Vundle.vim.git

    # Langage
    git clone https://github.com/plasticboy/vim-markdown.git
    git clone https://github.com/cakebaker/scss-syntax.vim.git
    git clone https://github.com/vim-scripts/svg.vim.git
    git clone https://github.com/vim-scripts/ASPJScript.git
    git clone https://github.com/PProvost/vim-ps1.git
    git clone https://github.com/vim-scripts/MS-SQL-Server-Syntax.git
    git clone https://github.com/othree/javascript-libraries-syntax.vim.git
    git clone https://github.com/bryanthankins/vim-aspnetide.git
    git clone https://github.com/vim-scripts/asp.net.git
    git clone https://github.com/ekalinin/Dockerfile.vim.git
    git clone https://github.com/pangloss/vim-javascript
    git clone https://github.com/mxw/vim-jsx

    # Integrations
    git clone https://github.com/scrooloose/syntastic.git
    git clone https://github.com/tpope/vim-fugitive.git
    git clone https://github.com/heavenshell/vim-jsdoc.git

    # Interface
    git clone https://github.com/bling/vim-airline.git
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/gorodinskiy/vim-coloresque.git
    git clone https://github.com/airblade/vim-gitgutter.git
    git clone https://github.com/scrooloose/nerdtree.git

    # Colour schemes
    git clone https://github.com/RobBollons/vim-distinguished.git

    chown -R $USERNAME $USER_HOME
