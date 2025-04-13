FROM archlinux:latest

# Arch being rolling, we first assure base packages are latest version.
RUN pacman -Syyu --noconfirm \
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
    zsh \
    tmux \
    curl \ 
    otf-hermit-nerd \
    neovim 

# Create a user archdev with UID and GID 1337
RUN groupadd -g 1337 archdev && \
    useradd -m -u 1337 -g archdev -s /bin/zsh archdev
# Give user passwordless root -- this is a dev container for writing and building software not hosting and running.
RUN usermod -aG wheel archdev && \
    echo "archdev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/archdev

# Change user to archdev and cd /home/archdev
USER archdev
WORKDIR /home/archdev

# All exist in pacman but useing source for rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain stable -y && \
    export PATH=$PATH:$HOME/.cargo/bin && \
    rustup install stable && \
    rustup default stable && \
    rustup component add rust-analyzer

# Install cargo watch 
RUN export PATH=$PATH:$HOME/.cargo/bin && \
    cargo install cargo-watch

# TODO: make a no-gui option for dotfiles build
# Clone dotfiles -- just taking nvchad/nvim config with rust-analyzer
RUN git clone https://github.com/Jeremy-Gstein/dotfiles ~/.dotfiles \
    && mv ~/.dotfiles/shell/ ~/.config

# Install Yay and remove build dir
RUN cat ~/.dotfiles/build/install_yay.sh | bash && rm -rf ~/yay 

# Install oh-my-zsh
RUN tail -n 5 ~/.dotfiles/build/install_packages.sh | bash
# Move zshrc after install
RUN cp ~/.dotfiles/.zshrc ~/

# CLEANUP 
RUN rm -rf ~/.dotfiles


CMD ["zsh"]

