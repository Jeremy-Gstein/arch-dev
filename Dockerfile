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
    vim \
    git \
