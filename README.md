# My Dotfiles

## Installing (using my dockerfile)
1. Install [docker](https://www.docker.com/)
2. Run `docker build -t [username]/devbox git://github.com/robbollons/_dotfiles.git`
3. Run `docker run -it --name=devbox -v /path/to/a/devfiles/share/:/home/dev/Dev [username]/devbox`

## .vimrc
I love my .vimrc, it is my pride and joy. It is split into seperate configuration files in the '~/.vim/config/ folder to keep things organised.

The font set in ~/.vim/config/gui.vim can be downloaded from [here](https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro)
