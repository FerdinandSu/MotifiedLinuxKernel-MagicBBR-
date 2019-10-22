# MotifiedLinuxKernel-MagicBBR-
a Motified Linux Kernel with Magic BBR, which has adjusted some parameters.

The parameters are set alike the @tcp-nanqinlang version bbrmod

you can compile the full kernel, or just use the make "
make -C /lib/modules/$(uname -r)/build M=`pwd` modules CC=/usr/bin/gcc
"
to compile the ko.
