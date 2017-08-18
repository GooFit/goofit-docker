#!/bin/sh

if [ ! -e /GooFit/build/examples/exponential/exponential ] ; then
    cd /GooFit/build && cmake . && make -j$(nproc)
fi

exec "$@"
