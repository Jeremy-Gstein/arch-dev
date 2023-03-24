from archlinux:latest

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup install stable \
    && rustup default stable \
    && cargo update \
    && pacman -S --noconfirm \
    pkg-config \
    git \
    make \
    gcc \
    cmake \
    clang \
    llvm \
    python \
    python-pip \
    vim \
    git \
    curl \
