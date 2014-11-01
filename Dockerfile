FROM debian:jessie
MAINTAINER Rob Bollons <rob@robbollons.com>

# Install dev tools
    RUN apt-get update
    RUN apt-get install -y curl

    # Set up node installation
    RUN curl -sL https://deb.nodesource.com/setup | sudo bash -

    RUN apt-get install -y git
    RUN apt-get install -y vim
    RUN apt-get install -y tmux
    RUN apt-get install -y wget
    RUN apt-get install -y openssh-server
    RUN apt-get install -y python-dev
    RUN apt-get install -y rubygems
    RUN apt-get install -y nodejs
    RUN apt-get install -y build-essential



# Setup a 'dev' user
    RUN useradd -s /bin/bash -m -d /home/dev -g root dev
    RUN echo "dev:password" | chpasswd
    RUN echo "root:password" | chpasswd
    RUN echo 'dev  ALL=(ALL:ALL) ALL' >> /etc/sudoers
    ENV HOME /home/dev
    WORKDIR $HOME


# Hook up my dotfiles
    # clone the dotfiles
    RUN git clone https://github.com/RobBollons/dev-environment.git $HOME/.dev-environment

    # Make the dir scructure
    RUN rm $HOME/.bashrc
    RUN mkdir $HOME/.vim
    RUN mkdir -p $HOME/.tmux/plugins
    RUN mkdir -p $HOME/.bin

    # symlink the dotfiles from the repo
    RUN ln -s $HOME/.dev-environment/_bashrc $HOME/.bashrc
    RUN ln -s $HOME/.dev-environment/_bash_profile $HOME/.bash_profile
    RUN ln -s $HOME/.dev-environment/_vimrc $HOME/.vimrc
    RUN ln -s $HOME/.dev-environment/_vim/config/ $HOME/.vim/config
    RUN ln -s $HOME/.dev-environment/_gitconfig $HOME/.gitconfig
    RUN ln -s $HOME/.dev-environment/_git_template/ $HOME/.git_template
    RUN ln -s $HOME/.dev-environment/_tmux.conf $HOME/.tmux.conf
    RUN ln -s $HOME/.dev-environment/_tmuxinator/ $HOME/.tmuxinator

# Arbitrary scripts
    # Git PS1 script
    RUN wget -O $HOME/.bin/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

    # tmuxinator completion
    RUN wget -O $HOME/.bin/tmuxinator.bash https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash

    # a script that helps easier session management in vim
    RUN wget -O $HOME/.bin/vims https://gist.githubusercontent.com/RobBollons/9b00bcb1e171892dc0b6/raw/383f218fe5d92796b2e93e0d70f6aed8177aeac3/vims


# Install tmux plugins
    WORKDIR $HOME/.tmux/plugins
    RUN git clone https://github.com/tmux-plugins/tpm
    RUN git clone https://github.com/tmux-plugins/tmux-resurrect
    RUN git clone https://github.com/jimeh/tmux-themepack


# Install and build Vim plugins
    WORKDIR $HOME/.vim/bundle
    # Bundle Manager
    RUN git clone https://github.com/gmarik/Vundle.vim.git

    # Langage
    RUN git clone https://github.com/plasticboy/vim-markdown.git
    RUN git clone https://github.com/cakebaker/scss-syntax.vim.git
    RUN git clone https://github.com/vim-scripts/svg.vim.git
    RUN git clone https://github.com/vim-scripts/ASPJScript.git
    RUN git clone https://github.com/PProvost/vim-ps1.git
    RUN git clone https://github.com/vim-scripts/MS-SQL-Server-Syntax.git
    RUN git clone https://github.com/othree/javascript-libraries-syntax.vim.git
    RUN git clone https://github.com/bryanthankins/vim-aspnetide.git
    RUN git clone https://github.com/vim-scripts/asp.net.git
    RUN git clone https://github.com/ekalinin/Dockerfile.vim.git
    RUN git clone https://github.com/pangloss/vim-javascript
    RUN git clone https://github.com/mxw/vim-jsx

    # Integrations
    RUN git clone https://github.com/scrooloose/syntastic.git
    RUN git clone https://github.com/tpope/vim-fugitive.git
    RUN git clone https://github.com/heavenshell/vim-jsdoc.git

    # Interface
    RUN git clone https://github.com/bling/vim-airline.git
    RUN git clone https://github.com/kien/ctrlp.vim.git
    RUN git clone https://github.com/gorodinskiy/vim-coloresque.git
    RUN git clone https://github.com/airblade/vim-gitgutter.git
    RUN git clone https://github.com/scrooloose/nerdtree.git

    # Colour schemes
    RUN git clone https://github.com/RobBollons/vim-distinguished.git

# Set permissions
    RUN chown -R dev $HOME

# Run as the dev user
    USER dev
    WORKDIR $HOME

# Install node packages
    RUN npm install -g gulp
    RUN npm install -g jshint
    RUN npm install -g mocha

# Install ruby packages
    RUN gem install tmuxinator
    RUN gem install t

# Open ports
    EXPOSE 22
    EXPOSE 80
