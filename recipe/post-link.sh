echo "To enable udev device setup of libiio hardware, you must manually install"    >> $PREFIX/.messages.txt
echo "the udev rules provided by the 'libiio' package by copying or linking"        >> $PREFIX/.messages.txt
echo "them into your system directory, e.g.:"                                        >> $PREFIX/.messages.txt
echo "    sudo ln -s $PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/"    >> $PREFIX/.messages.txt
echo "After doing this, reload your udev rules:"                                     >> $PREFIX/.messages.txt
echo "    sudo udevadm control --reload && sudo udevadm trigger"                     >> $PREFIX/.messages.txt
