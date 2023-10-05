#!/usr/bin/env bash

set -ex

cd bindings/python
mkdir build
cd build

# set CMAKE_INSTALL_FULL_LIBDIR, running from here means it is not set by default
cmake_config_args=(
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX=$PREFIX
    -DCMAKE_INSTALL_FULL_LIBDIR=$PREFIX/lib
    -DPython_EXECUTABLE=$PYTHON
    -DWITH_DOC=OFF
    -DVERSION=$PKG_VERSION
)

if [[ $target_platform == osx* ]] ; then
    # set CMAKE_CROSSCOMPILING to short-circuit broken installed library detection
    cmake_config_args+=(
        -DCMAKE_CROSSCOMPILING=ON
    )
fi

cmake ${CMAKE_ARGS} .. "${cmake_config_args[@]}"
cmake --build . --config Release

# don't install with CMake, rather install with pip to avoid .egg-info dir
$PYTHON -m pip install . --no-deps --no-build-isolation -vv
