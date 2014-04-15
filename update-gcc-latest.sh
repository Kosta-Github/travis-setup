#!/bin/bash
set -ev

apt-get install -qq gcc-4.8
apt-get install -qq g++-4.8
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 20
update-alternatives --config gcc
update-alternatives --config g++
g++ --version
