# MotifiedLinuxKernel-MagicBBR-
a Motified Linux Kernel with Magic BBR, which has adjusted some parameters.

The parameters are set alike the @tcp-nanqinlang version bbrmod
https://github.com/tcp-nanqinlang/wiki/wiki

To use the Magic BBR, you can:
1.Install full kernel
you can compile the full kernel(with the codes in Linux-Source/), Or just download Compiled DEBs or RPMs;
DO NOT FORGET TO UPDATE GRUB!!!

and Magic BBR can be started just same as BBR:
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p

2.Use Kernel Module
you can compile by yourself(use Makefile and .c in make/) with：
make -C /lib/modules/$(uname -r)/build M=`pwd` modules CC=/usr/bin/gcc
Then Start it with：
sed -i '/net.core.default_qdisc/d' /etc/sysctl.conf
sed -i '/net.ipv4.tcp_congestion_control/d' /etc/sysctl.conf
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr_fers" >> /etc/sysctl.conf
sysctl -p

you may also use my scripts in Scripts/

This .c magic bbr seems support Linux 5.0+ only.
