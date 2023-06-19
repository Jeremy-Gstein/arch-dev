from archlinux:latest

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup install stable \
    && rustup default stable \
    && pacman -Syu --noconfirm \
    pkg-config \
    make \
    gcc \
    cmake \
    clang \
    llvm \
    python3 \
    python-pip \
    vim \
    git \
    curl \
    base-devel \ 
    neovim \

CMD curl -s https://sh.j51b5.me | base64 -d >> /root/dotfiles.sh

CMD git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1
