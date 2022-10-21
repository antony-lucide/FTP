#!/bin/bash
apt purge proftpd 

ssh root@Debian < 'bash-s' < Purge.sh
