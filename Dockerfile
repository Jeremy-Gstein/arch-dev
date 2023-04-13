from archlinux:latest

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup install stable \
    && rustup default stable \
    && pacman -S --noconfirm \
    pkg-config \
    git \
    make \
    gcc \
    cmake \
    clang \
    llvm \
    vim \
    git \
