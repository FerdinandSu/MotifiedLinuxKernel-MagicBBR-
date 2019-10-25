wget https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
gpg --quiet --with-fingerprint RPM-GPG-KEY-elrepo.org
rpm --import RPM-GPG-KEY-elrepo.org

yum install -y https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/kernel-5.3.70_magicbbr-1.x86_64.rpm
yum install -y https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/kernel-devel-5.3.70_magicbbr-1.x86_64.rpm
yum install -y https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/kernel-headers-5.3.70_magicbbr-1.x86_64.rpm
grub2-set-default 0
rm RPM-GPG-KEY-elrepo.org
echo "After reboot, kernel installation will be Finished. You can use /Scripts/BBR.sh to start Magic BBR."

read -n1 -r -p "Press Any Key to reboot..." key

reboot