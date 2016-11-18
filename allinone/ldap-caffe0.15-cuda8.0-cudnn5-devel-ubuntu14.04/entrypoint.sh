#!/bin/bash

sed "s#LDAP_ADDR#$LDAP_ADDR#" /etc/ldap.conf.template > /etc/ldap.conf
sed "s#NFS_ADDR#$NFS_ADDR#" /etc/auto.nfs.template > /etc/auto.nfs

exec "$@"
