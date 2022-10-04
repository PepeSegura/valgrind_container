FROM ubuntu:18.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install zsh -y
RUN apt-get install git-core -y
RUN apt-get install build-essential cmake valgrind clang vim -y
RUN apt-get install gcc make xorg libxext-dev libbsd-dev -y
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

RUN echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.zshrc)" > /root/.zshrc
RUN echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.vimrc)" > /root/.vimrc
RUN mkdir -p /root/.vim/colors
RUN echo "$(curl -fsSL https://raw.githubusercontent.com/erichdongubler/vim-sublime-monokai/master/colors/sublimemonokai.vim)" > /root/.vim/colors/sublimemonokai.vim

WORKDIR /home
