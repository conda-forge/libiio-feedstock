setlocal EnableDelayedExpansion
@echo on

:: copy the wingetopt readme (containing licenses) to the source root
copy "deps\wingetopt\README.md" "LICENSE_WINGETOPT.txt"

:: Make a build folder and change to it
mkdir build
cd build

:: configure
:: enable components explicitly so we get build error when unsatisfied
::   WITH_LOCAL_CONFIG requires libini
::   WITH_SERIAL_BACKEND requires libserialport
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_INSTALL_LIBDIR="lib" ^
    -DCMAKE_INSTALL_SBINDIR="bin" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DBUILD_SHARED_LIBS=ON ^
    -DCPP_BINDINGS=OFF ^
    -DCSHARP_BINDINGS=OFF ^
    -DENABLE_IPV6=OFF ^
    -DENABLE_PACKAGING=OFF ^
    -DHAVE_DNS_SD=ON ^
    -DLIBIIO_COMPAT=OFF ^
    -DNO_THREADS=OFF ^
    -DWITH_EMU_BACKEND=OFF ^
    -DWITH_EXAMPLES=OFF ^
    -DWITH_IIOD_EMU=OFF ^
    -DWITH_LIBTINYIIOD=OFF ^
    -DWITH_MAN=OFF ^
    -DWITH_MODULES=OFF ^
    -DWITH_NETWORK_BACKEND=ON ^
    -DWITH_SERIAL_BACKEND=OFF ^
    -DWITH_TESTS=OFF ^
    -DWITH_USB_BACKEND=ON ^
    -DWITH_UTILS=ON ^
    -DWITH_XML_BACKEND=ON ^
    -DWITH_ZSTD=ON ^
    ..
if errorlevel 1 exit 1

:: build
cmake --build . --config Release -- -j%CPU_COUNT%
if errorlevel 1 exit 1

:: install
cmake --build . --config Release --target install
if errorlevel 1 exit 1
