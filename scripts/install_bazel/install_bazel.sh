#!/bin/bash

#
# Script for installation in Ubuntu 24.04
#

LATEST_BAZELISK_DEB_LINK="https://github.com/bazelbuild/bazelisk/releases/download/v1.25.0/bazelisk-amd64.deb"
BAZELISK_README_LINK="https://github.com/bazelbuild/bazelisk"

SUPPORTED_DISTRO="24.04"

containSubString() {
    if [[ $2 == *$1* ]]; then
        return 1
    else
        return 0
    fi
}

distro=$(lsb_release -r | grep $SUPPORTED_DISTRO)

if containSubString "$SUPPORTED_DISTRO" "$distro"; then
    echo "Not supported distro: see \"$BAZELISK_README_LINK\""
    exit 1;
fi

mkdir -p bazel-bin/deb
wget $LATEST_BAZELISK_DEB_LINK
mv bazelisk-amd64.deb bazel-bin/deb
sudo dpkg -i ./bazel-bin/deb/bazelisk-amd64.deb
bazelisk
bazel version