#!/bin/bash
set -ev

add-apt-repository -y ppa:ubuntu-toolchain-r/test
add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu/ precise main universe"
add-apt-repository -y "deb http://llvm.org/apt/precise/ llvm-toolchain-precise main"

apt-get update -qq
apt-get install -qq cmake
apt-get install clang-3.6 lldb-3.6
