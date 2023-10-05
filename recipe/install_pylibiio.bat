setlocal EnableDelayedExpansion
@echo on

:: Make a build folder and change to it
cd bindings\python
mkdir build
cd build

:: configure
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE:STRING=Release ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_INSTALL_FULL_LIBDIR="%LIBRARY_LIB%" ^
    -DPython_EXECUTABLE:PATH="%PYTHON%" ^
    -DWITH_DOC=OFF ^
    -DVERSION=%PKG_VERSION% ^
    ..
if errorlevel 1 exit 1

:: build
cmake --build . --config Release
if errorlevel 1 exit 1

:: don't install with CMake, rather install with pip to avoid .egg-info dir
%PYTHON% -m pip install . -vv
