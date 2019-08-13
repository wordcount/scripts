sed -i 's/blacklist nvidiafb/#blacklist nvidiafb/' /lib/modprobe.d/dist-blacklist.conf
echo "blacklist nouveau" >> /lib/modprobe.d/dist-blacklist.conf
echo "options nouveau modeset=0" >> /lib/modprobe.d/dist-blacklist.conf
mv "/boot/initramfs-$(uname -r).img" "/boot/initramfs-$(uname -r)-nouveau.img"
dracut "/boot/initramfs-$(uname -r).img" "$(uname -r)"
