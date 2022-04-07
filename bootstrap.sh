#!/bin/bash

set -e

cd $HOME/data
mkdir dl

git clone git://git.buildroot.net/buildroot
cd buildroot
git checkout -b 2022.02

cd $HOME/data
git clone git@github.com:ooonak/br-sndbx.git external

cd

