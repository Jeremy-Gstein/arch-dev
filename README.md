## Arch Linux Docker 
### Dockerfile builds a archlinux:latest image with gcc, clang, rust, and a lightweight linux env.

## Start/Build Container:
- `$ docker compose build && docker compose up`
## Attach to Containers Shell:
- `$ docker attach $ARCH-DEV-N`

### Package List:
rustup, pkg-config, base-devel, make, gcc, cmake, clang, llvm, go, python3, python-pip, vim, git, zsh, tmux, curl

---
[![Build and Push to Docker Hub](https://github.com/Jeremy-Gstein/arch-dev/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/Jeremy-Gstein/arch-dev/actions/workflows/build.yml)
