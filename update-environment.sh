#!/bin/bash
set -ev

add-apt-repository -y ppa:ubuntu-toolchain-r/test
add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu/ saucy main universe"
# add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu/ raring main universe"
# add-apt-repository -y "deb http://llvm.org/apt/raring/ llvm-toolchain-raring main"

# wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | sudo apt-key add -

apt-get update -qq

apt-get install -qq cmake
