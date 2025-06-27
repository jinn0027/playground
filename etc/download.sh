#!/bin/bash

#date=$(date +%Y%m%d)

pushd ../external

#if [ ! -f python-docx.tar.gz ] ; then
#    git clone https://github.com/python-openxml/python-docx.git -b v1.2.0 --recursive
#fi

for i in $(ls)
do
    if [ -d $i ] ; then
        echo $i
        tar -I pigz -cvf ${i}.tar.gz ${i}
        rm -rf $i
    fi
done

# MiniConda setup script
if [ ! -f Miniconda3-py39_24.9.2-0-Linux-x86_64.sh ] ; then
    wget https://repo.anaconda.com/miniconda/Miniconda3-py39_24.9.2-0-Linux-x86_64.sh
fi

popd # external
