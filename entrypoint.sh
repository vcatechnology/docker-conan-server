#!/bin/bash

set -e -x

chmod -R 600 /var/lib/conan
chown -R conan /var/lib/conan
su -c /usr/local/bin/conan_server conan
