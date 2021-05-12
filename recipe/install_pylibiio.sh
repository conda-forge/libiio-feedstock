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
    -DVERSION=$PKG_VERSION
)

cmake ${CMAKE_ARGS} .. "${cmake_config_args[@]}"
cmake --build . --config Release

# don't install with CMake, rather install with pip to avoid .egg-info dir
$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
