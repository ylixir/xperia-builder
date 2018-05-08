#!/usr/bin/env bash

ulimit -S -n 1024

mkdir -p aosp
mkdir -p bin

export PATH=`pwd`/bin:$PATH

which repo
if [ $? != 0 ]
then
  curl https://storage.googleapis.com/git-repo-downloads/repo > bin/repo
  chmod a+x bin/repo
fi

cd aosp
repo init -u https://android.googlesource.com/platform/manifest -b android-8.1.0_r20

cd .repo
git clone https://github.com/sonyxperiadev/local_manifests
cd local_manifests
git checkout <branch>
cd ../..

repo sync

./repo_update.sh

source build/envsetup.sh && lunch

make -j 4
