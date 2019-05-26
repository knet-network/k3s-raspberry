#!/bin/bash -e

if [[ ! -x "${TIMEZONE}" ]]; then

    echo "${TIMEZONE}" > "${ROOTFS_DIR}/etc/timezone"
    rm "${ROOTFS_DIR}/etc/localtime"

    on_chroot << EOF
    dpkg-reconfigure -f noninteractive tzdata
EOF

fi