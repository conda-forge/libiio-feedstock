#!/usr/bin/env bash

set -ex

mkdir build
cd build

# enable components explicitly so we get build error when unsatisfied
#  WITH_SERIAL_BACKEND requires libserialport
cmake_config_args=(
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX=$PREFIX
    -DCMAKE_INSTALL_LIBDIR=lib
    -DCMAKE_INSTALL_SBINDIR=bin
    -DBUILD_SHARED_LIBS=ON
    -DCPP_BINDINGS=OFF
    -DCSHARP_BINDINGS=OFF
    -DENABLE_IPV6=ON
    -DENABLE_PACKAGING=OFF
    -DLIBIIO_COMPAT=OFF
    -DNO_THREADS=OFF
    -DWITH_EMU_BACKEND=OFF
    -DWITH_EXAMPLES=OFF
    -DWITH_IIOD_EMU=OFF
    -DWITH_LIBTINYIIOD=OFF
    -DWITH_MAN=OFF
    -DWITH_MODULES=OFF
    -DWITH_NETWORK_BACKEND=ON
    -DWITH_SERIAL_BACKEND=OFF
    -DWITH_TESTS=OFF
    -DWITH_USB_BACKEND=ON
    -DWITH_UTILS=ON
    -DWITH_XML_BACKEND=ON
    -DWITH_ZSTD=ON
)

if [[ $target_platform == linux* ]] ; then
    cmake_config_args+=(
        -DHAVE_DNS_SD=OFF
        -DINSTALL_UDEV_RULE=ON
        -DUDEV_RULES_INSTALL_DIR=$PREFIX/lib/udev/rules.d
        -DWITH_AIO=ON
        -DWITH_IIOD=ON
        # IIOD_USBD needs at least kernel 3.18 (sysroot 2.17 has 3.10)
        -DWITH_IIOD_USBD=OFF
        -DWITH_LOCAL_BACKEND=ON
        -DWITH_LOCAL_CONFIG=ON
        -DWITH_SYSTEMD=OFF
        -DWITH_SYSVINIT=OFF
        -DWITH_UPSTART=OFF
    )
else
    cmake_config_args+=(
        -DHAVE_DNS_SD=ON
        -DOSX_FRAMEWORK=OFF
        -DOSX_PACKAGE=OFF
        -DWITH_IIOD=OFF
        -DWITH_LOCAL_BACKEND=OFF
    )
fi

cmake ${CMAKE_ARGS} -G "Ninja" .. "${cmake_config_args[@]}"
cmake --build . --config Release -- -j${CPU_COUNT}
cmake --build . --config Release --target install

# add post-link script with instructions for manually linking udev rules
if [[ $target_platform == linux* ]] ; then
    mkdir -p $PREFIX/bin
    cp $RECIPE_DIR/post-link.sh $PREFIX/bin/.libiio-post-link.sh
    chmod +x $PREFIX/bin/.libiio-post-link.sh
fi
