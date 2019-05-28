#!/bin/bash -e

python3 -c "import platform;print(platform.machine());"
python3 -m pip install awscli boto3 botocore pip --index-url=https://www.piwheels.org/simple --upgrade