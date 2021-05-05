#!/bin/sh
set -ex
find iocs \
    -maxdepth 1 \
    -mindepth 1 \
    -type d \
    -exec sh -c "echo 'Update IOC {}'; cd {}; git pull &" \;

find base-images \
    -maxdepth 1 \
    -mindepth 1 \
    -type d \
    -exec sh -c "echo 'Update base image {}'; cd {}; git pull &" \;
