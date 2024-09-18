#!/usr/bin/env bash

# Function to map Go-style platform to Rust target triple
map_go_to_rust() {
    local go_os=$1
    local go_arch=$2

    case "$go_os/$go_arch" in
    linux/amd64)
        echo "x86_64-unknown-linux-gnu"
        ;;
    linux/386)
        echo "i686-unknown-linux-gnu"
        ;;
    linux/arm64)
        echo "aarch64-unknown-linux-gnu"
        ;;
    linux/arm)
        echo "armv7-unknown-linux-gnueabihf"
        ;;
    darwin/amd64)
        echo "x86_64-apple-darwin"
        ;;
    darwin/arm64)
        echo "aarch64-apple-darwin"
        ;;
    windows/amd64)
        echo "x86_64-pc-windows-msvc"
        ;;
    windows/386)
        echo "i686-pc-windows-msvc"
        ;;
    windows/arm64)
        echo "aarch64-pc-windows-msvc"
        ;;
    *)
        echo "Unsupported GOOS/GOARCH combination: $go_os/$go_arch"
        exit 1
        ;;
    esac
}

# Check for correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <GOOS/GOARCH>"
    echo "Example: $0 linux/amd64"
    exit 1
fi

# Split the input argument into GOOS and GOARCH
input="$1"
IFS='/' read -r go_os go_arch <<<"$input"

# Call the function to get the Rust target triple
map_go_to_rust "$go_os" "$go_arch"
