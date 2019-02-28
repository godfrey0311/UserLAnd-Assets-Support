#!/support/common/busybox_static sh

if [[ -z "${TAR_PATH}" ]]; then
  TAR_PATH="/sdcard/rootfs.tar.gz"
fi

/support/common/busybox_static find . -maxdepth 1 -not -name '.' -and -not -name 'sys' -and -not -name 'dev' -and -not -name 'proc' -and -not -name 'data' -and -not -name 'mnt' -and -not -name 'host-rootfs' -and -not -name 'support' | busybox_static xargs busybox_static tar -czvf $TAR_PATH