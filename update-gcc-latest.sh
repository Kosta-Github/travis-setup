#!/bin/bash
set -ev

apt-get install -qq gcc-4.9
apt-get install -qq g++-4.9
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20
update-alternatives --config gcc
update-alternatives --config g++
g++ --version
