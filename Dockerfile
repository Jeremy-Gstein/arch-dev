from archlinux:latest

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup install stable \
    && rustup default stable \
    && pacman -Syu --noconfirm \
    pkg-config \
    base-devel \
    make \
    gcc \
    cmake \
    clang \
    llvm \
    go \
    python3 \
    python-pip \
    vim \
    git \
    neovim \
    zsh \
    tmux \
    curl \
    && git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1

