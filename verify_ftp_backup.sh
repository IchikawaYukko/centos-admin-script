. $(dirname $0)/password.conf

HASH1=$(curl -sSu $FTP_USER:$FTP_PASS ftp://$FTP_SERVER/www/vps-backup/$1|sha1sum|cut -b -40)
HASH2=$(sha1sum $1|cut -b -40)

if [ $HASH1 = $HASH2 ] ; then
	echo $1 Hash OK
else
	echo $1 Hash NG
fi

