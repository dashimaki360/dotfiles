#! /bin/bash

#install related lib
sudo apt-get install -y libatlas-base-dev
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler g++-4.6
sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev
# download caffe
git clone https://github.com/BVLC/caffe.git

