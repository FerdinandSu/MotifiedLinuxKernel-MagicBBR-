mkdir kernels && cd kernels

wget -N --no-check-certificate https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/linux-headers-5.3.7-5.3.7-magicbbr_5.3.7-5.3.7-magicbbr-1_amd64.deb
wget -N --no-check-certificate https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/linux-image-5.3.7-5.3.7-magicbbr-dbg_5.3.7-5.3.7-magicbbr-1_amd64.deb
wget -N --no-check-certificate https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/linux-image-5.3.7-5.3.7-magicbbr_5.3.7-5.3.7-magicbbr-1_amd64.deb
wget -N --no-check-certificate https://github.com/FerdinandSukhoi/MotifiedLinuxKernel-MagicBBR-/releases/download/V1.0/linux-libc-dev_5.3.7-5.3.7-magicbbr-1_amd64.deb
dpkg -i linux-libc-dev_5.3.7-5.3.7-magicbbr-1_amd64.deb
dpkg -i linux-headers-5.3.7-5.3.7-magicbbr_5.3.7-5.3.7-magicbbr-1_amd64.deb
dpkg -i linux-image-5.3.7-5.3.7-magicbbr-dbg_5.3.7-5.3.7-magicbbr-1_amd64.deb
dpkg -i linux-image-5.3.7-5.3.7-magicbbr_5.3.7-5.3.7-magicbbr-1_amd64.deb

cd .. && rm -rf kernels

update-grub

echo "After reboot, kernel installation will be Finished. You can use /Scripts/BBR.sh to start Magic BBR."

read -n1 -r -p "Press Any Key to reboot..." key

reboot