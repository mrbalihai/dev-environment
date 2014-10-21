FROM ubuntu:utopic
MAINTAINER Rob Bollons <rob@robbollons.com>

# Install dev tools
RUN sudo apt-get update
RUN sudo apt-get install -y git vim node npm zsh tmux wget openssh-server


# Setup a 'dev' user
RUN useradd -s /bin/bash -m -d /home/dev -g root dev
RUN echo "dev:password" | chpasswd
RUN echo "root:password" | chpasswd
RUN echo 'dev  ALL=(ALL:ALL) ALL' >> /etc/sudoers
ENV HOME /home/dev
WORKDIR $HOME
RUN chown -R dev $HOME


# Hook up my dotfiles
RUN git clone https://github.com/RobBollons/_dotfiles.git $HOME/.dotfiles

RUN rm $HOME/.bashrc
RUN mkdir $HOME/.vim

RUN ln -s $HOME/.dotfiles/_bashrc $HOME/.bashrc
RUN ln -s $HOME/.dotfiles/_bash_profile $HOME/.bash_profile
RUN ln -s $HOME/.dotfiles/_vimrc $HOME/.vimrc
RUN ln -s $HOME/.dotfiles/_vim/config/ $HOME/.vim/config
RUN ln -s $HOME/.dotfiles/_gitconfig $HOME/.gitconfig
RUN ln -s $HOME/.dotfiles/_git_template/ $HOME/.git_template
RUN ln -s $HOME/.dotfiles/_tmux.conf $HOME/.tmux.conf
RUN ln -s $HOME/.dotfiles/_tmuxinator/ $HOME/.tmuxinator


# Install and build Vim plugins
WORKDIR $HOME/.vim/bundle
RUN git clone https://github.com/gmarik/Vundle.vim.git
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
RUN git clone https://github.com/scrooloose/syntastic.git
RUN git clone https://github.com/tpope/vim-fugitive.git
RUN git clone https://github.com/heavenshell/vim-jsdoc.git
RUN git clone https://github.com/bling/vim-airline.git
RUN git clone https://github.com/kien/ctrlp.vim.git
RUN git clone https://github.com/gorodinskiy/vim-coloresque.git
RUN git clone https://github.com/airblade/vim-gitgutter.git
RUN git clone https://github.com/scrooloose/nerdtree.git
RUN git clone https://github.com/sickill/vim-monokai.git
RUN git clone https://github.com/RobBollons/vim-distinguished.git
RUN git clone https://github.com/nanotech/jellybeans.vim.git
RUN git clone https://github.com/marijnh/tern_for_vim.git
RUN git clone https://github.com/Valloric/YouCompleteMe.git

WORKDIR $HOME/.vim/bundle/tern_for_vim
RUN npm install
WORKDIR $HOME/.vim/bundle/YouCompleteMe
RUN ./install.sh --omnisharp-completer
WORKDIR $HOME


# Install node packages
RUN npm install -g gulp jshint mocha


# Open ports
EXPOSE 22 # SSH Server
EXPOSE 80 # Web Server

USER dev
