#!/bin/bash
set -ev

add-apt-repository -y ppa:ubuntu-toolchain-r/test
add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu/ precise main universe"

# setup llvm: http://llvm.org/apt/
add-apt-repository -y "deb http://llvm.org/apt/precise/ llvm-toolchain-precise main"
wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -

apt-get update -y
apt-get install -y cmake
apt-get install -y clang-3.6 lldb-3.6
