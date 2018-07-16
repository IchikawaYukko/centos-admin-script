# Check Duplicate Files by SHA1 hash

# Check Args
if [ $# -ne 1 ]; then
  echo "Usage:" 1>&2
  echo "./check_duplicate.sh Directory" 1>&2
  exit 1
fi

/usr/bin/find $1 -type f -name '*' -exec sha1sum {} \; | sort -k 1 | uniq -Dw 40
