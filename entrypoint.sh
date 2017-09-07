#!/bin/bash

set -e -x

#move ldap_authentication plugin from root install folder into conan user
cp -rf /root/.conan_server/* /var/lib/conan/.conan_server/

#chmod -R 600 /var/lib/conan/.conan_server
chown -R conan /var/lib/conan

#run conan_server as conan user
su -c /usr/local/bin/conan_server conan
