#!/usr/bin/env bash

ulimit -S -n 1024

export PATH=`pwd`/bin:$PATH

cd aosp

./repo_update.sh

# compact aosp_f5321-eng
# xz aosp_f8332-eng
source build/envsetup.sh && lunch aosp_f5321-eng

make -j8

cd ..
