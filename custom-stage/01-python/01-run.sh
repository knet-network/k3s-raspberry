#!/bin/bash -e

#on_chroot << EOF
#    pip3 install --upgrade pip
#    pip3 install awscli boto3 botocore
#    pip install --upgrade pip
#    pip install awscli boto3 botocore
#EOF

on_chroot << EOF
    python3 -c "import platform;print(platform.machine());"
    python3 -m pip install awscli boto3 botocore pip --index-url=https://www.piwheels.org/simple --upgrade
EOF