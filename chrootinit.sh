# Mount Kernel Virtual File Systems
TARGETDIR=$1

#mkidr
echo "mkidr........"
mkdir "$TARGETDIR"
mkdir "$TARGETDIR"/proc
mkdir "$TARGETDIR"/sys
mkdir "$TARGETDIR"/dev
mkdir "$TARGETDIR"/dev/shm
mkdir "$TARGETDIR"/dev/pts
mkdir "$TARGETDIR"/etc

#mount
echo "mount........"
mount -t proc proc "$TARGETDIR"/proc
mount -t sysfs sysfs "$TARGETDIR"/sys
mount -t devtmpfs devtmpfs "$TARGETDIR"/dev
mount -t tmpfs tmpfs "$TARGETDIR"/dev/shm
mount -t devpts devpts "$TARGETDIR"/dev/pts


echo "cp........"
cp -r /bin/ "$TARGETDIR"/bin
cp -r /lib "$TARGETDIR"/lib
cp -r /lib64/ "$TARGETDIR"/lib64
cp -r /usr/ "$TARGETDIR"/usr
cp -r /etc/ "$TARGETDIR"/etc

echo "chroot........"
# Link /etc/mtab
chroot "$TARGETDIR" rm /etc/mtab 2> /dev/null
chroot "$TARGETDIR" ln -s /proc/mounts /etc/mtab

# shellcheck disable=SC2164
cd "$TARGETDIR"