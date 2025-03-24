#!/bin/sh

apt-get -y -qq update
apt-get -y -qq install gcc g++ git unzip curl python3-pip python-is-python3 libntirpc-dev

curl -sSOL https://github.com/bazelbuild/bazelisk/releases/download/v1.11.0/bazelisk-linux-amd64
mv bazelisk-linux-amd64 /usr/local/bin/bazel
chmod +x /usr/local/bin/bazel

pip install tensorflow==2.19.0
./configure.sh

export TF_PYTHON_VERSION=3.11
bazel build -s --verbose_failures \
    --copt="-Wno-error=array-parameter=" \
    --copt="-I/usr/include/tirpc" \
    //tensorflow_io/...
