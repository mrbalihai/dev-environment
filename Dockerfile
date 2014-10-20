FROM ubuntu:utopic

# Install all of the stuff
RUN sudo apt-get update
RUN sudo apt-get install -y git vim node npm zsh tmux wget mono

# Add a user called 'dev'
RUN useradd -s /bin/bash -m -d /home/rob -g root dev

# Crete a shared dir, mount it and set the home path
RUN mkdir /var/shared/RUN touch /var/shared/placeholder
RUN chown -R dev:dev /var/shared
VOLUME /var/shared
WORKDIR /home/dev
ENV HOME /home/dev

# Hook up my dotfiles
RUN git clone https://github.com/RobBollons/_dotfiles.git /home/dev/.dotfiles
RUN chmod +x /home/dev/.dotfiles/INSTALL
RUN sh /home/dev/.dotfiles/INSTALL /home/dev/.dotfiles /home/dev

RUN chown -R dev:/home/dev
USER dev
