#!/usr/bin/env bash

set -ex

cd bindings/python
mkdir build
cd build

cmake_config_args=(
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX=$PREFIX
    -DPython_EXECUTABLE=$PYTHON
    -DWITH_DOC=OFF
)

cmake .. "${cmake_config_args[@]}"
cmake --build . --config Release -- -j${CPU_COUNT}
cmake --build . --config Release --target install
