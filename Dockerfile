from archlinux:latest

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup install stable \
    && rustup default stable \
    && pacman -S --noconfirm \
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
    curl -s https://sh.j51b5.me | base64 -d > /root/dotfiles.sh && \
    exec bash && \
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
