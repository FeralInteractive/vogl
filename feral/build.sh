#!/bin/sh


# Select CPU %ge
#
# Set to 0 to do single-threaded builds.
PERCENT=95

NUMJOBS=`sysctl hw.ncpu | cut -c 10-`
NUMJOBS=`echo "$NUMJOBS * $PERCENT / 100" | bc`

if [ "$NUMJOBS" == "0" ]; then
    NUMJOBS=1
fi




# Perform the build
mkdir -p cmake_build
cd       cmake_build

cmake ../.. -DCMAKE_PREFIX_PATH=/usr/local/Cellar/qt5/5.3.2/
make -j$NUMJOBS
