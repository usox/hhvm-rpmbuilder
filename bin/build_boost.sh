#!/bin/bash
mkdir -p /opt/boost
cd /tmp
wget https://dl.bintray.com/boostorg/release/1.63.0/source/boost_1_63_0.tar.gz
tar -xzf boost_1_*
cd boost_1_*
./bootstrap.sh --prefix=/opt/boost --without-libraries=python
./b2 variant=release threading=multi link=static --layout=tagged -j8
sudo ./b2 variant=release threading=multi link=static --layout=tagged --prefix="/opt/boost" install
