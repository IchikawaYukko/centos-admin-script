#!/bin/bash
cd $(dirname $0)
. password.conf

FROM=/mnt/ftp-remote
TO=/www/vps-backup
FILE=$1

lftp <<END
open $FTP_SERVER
user $FTP_USER $FTP_PASS
mirror -R --delete --verbose=3 --log=/mnt/backup/lftp.log $FROM $TO
END
