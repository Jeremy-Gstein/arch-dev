## (Unofficial) Arch Linux Development Docker Container (arch-dev)
Dockerfile builds a archlinux:latest image with gcc, python3, rust, and a lightweight linux env.
Build the image once! Break the Container fearlessly! get back to a clean enviroment FAST with the tools you love.

### Run and build Locally without dockerhub image.
- `$ git clone https://github.com/Jeremy-Gstein/arch-dev`
## Start/Build Container:
after cloning the repo cd to arch-dev before running the docker compose commands
- `$ docker compose build && docker compose up -d`
## Attach to Containers Shell:
by default with compose, the image produced (assuming no --scale passed) will be `arch-dev-archimage-1`
- `$ docker attach $arch-dev-archimage-1`

## Storage bind (optional):
Create a directory named `data` to match `arch-dev/data`
Any files or directories stored here will be shared between the host and container.
Host: `$PWD/arch-dev/data/foo.txt`
Container: `/data/foo.txt`

### Package List:
| Package         | Description                                              |
|-----------------|----------------------------------------------------------|
| rustup          | Toolchain installer for Rust programming language        |
| cargo           | Rust package manager and build system                    |
| cargo-watch     | Watches for file changes and runs commands automatically |
| rust-analyzer   | Rust language server for IDE features                    |
| yay             | AUR helper for Arch-based Linux distributions            |
| pkg-config      | Helper tool for compiling software                       |
| base-devel      | Essential build tools (includes `make`, `gcc`, etc.)     |
| make            | Build automation tool                                    |
| gcc             | GNU Compiler Collection for C and C++                    |
| cmake           | Cross-platform build system                              |
| clang           | LLVM-based C/C++ compiler                                |
| llvm            | Compiler framework and toolset                           |
| go              | Go programming language compiler                         |
| python3         | Python programming language interpreter                  |
| python-pip      | Python package manager                                   |
| vim             | Terminal-based text editor                               |
| git             | Version control system                                   |
| zsh             | Command-line shell alternative to Bash                   |
| tmux            | Terminal multiplexer for session management              |
| curl            | Command-line tool for transferring data with URLs        |
| neovim          | Modernized version of `vim`                              |

### Configurations:
Custom .zshrc and .config/nvim with rust-analyzer configured as a LSP
The system includes a default user account:
| Username | UID  | GID  | Password | /etc/sudoers           |
|----------|------|------|----------|------------------------|
| arch-dev | 1337 | 1337 | None     | ALL=(ALL) NOPASSWD:ALL |
Understand the potential security flaws and use this bundled software at your own risk!

---
[![Build and Push to Docker Hub](https://github.com/Jeremy-Gstein/arch-dev/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/Jeremy-Gstein/arch-dev/actions/workflows/build.yml)
