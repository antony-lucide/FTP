#!/bin/bash

apt install proftpd
apt install openssh-server

cat  proftpd.conf > /etc/proftpd/proftpd.conf

cat proftpd.tlc  > /etc/proftpd/proftpd.conf

ssh root@Debian > 'bash-s' < Machine.sh
