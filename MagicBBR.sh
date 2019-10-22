sed -i '/net.core.default_qdisc/d' /etc/sysctl.conf
sed -i '/net.ipv4.tcp_congestion_control/d' /etc/sysctl.conf
apt update
apt -y install make gcc
mkdir bbr_fers && cd bbr_fers
wget -N --no-check-certificate https://raw.githubusercontent.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/master/make/tcp_bbr_fers.c
wget -N --no-check-certificate https://raw.githubusercontent.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/master/make/Makefile
make -C /lib/modules/$(uname -r)/build M=`pwd` modules CC=/usr/bin/gcc
install tcp_bbr_fers.ko /lib/modules/$(uname -r)/kernel
cp -rf ./tcp_bbr_fers.ko /lib/modules/$(uname -r)/kernel/net/ipv4
depmod -a
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr_fers" >> /etc/sysctl.conf
sysctl -p
cd ..
echo -e "Started: MagicBBR"
rm -rf bbr_fers
