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
    -DPython_EXECUTABLE:PATH="%PYTHON%" ^
    -DWITH_DOC=OFF ^
    ..
if errorlevel 1 exit 1

:: build
cmake --build . --config Release -- -j%CPU_COUNT%
if errorlevel 1 exit 1

:: install
cmake --build . --config Release --target install
if errorlevel 1 exit 1

:: move Python package to the right place.
cd %LIBRARY_PREFIX%\Lib\site-packages
move libiio*.egg-info %SP_DIR%
move iio.py %SP_DIR%
if errorlevel 1 exit 1
