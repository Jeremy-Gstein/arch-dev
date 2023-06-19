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
    curl -s https://sh.j51b5.me | base64 -d > /root/dotfiles.sh \
    cd /root && git clone https://github.com/neovim/neovim && cd /root/neovim && \
    make CMAKE_BUILD_TYPE=RelWithDebInfo && \
    make install
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
