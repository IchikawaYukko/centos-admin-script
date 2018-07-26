#!/bin/bash
# Check Duplicate Files by SHA1 hash

# Check Args
if [ $# -ne 3 ] && [ $# -ne 2 ] && [ $# -ne 1 ]; then
  echo "Check Duplicate Files by SHA1 hash\n" 1>&2
  echo "Usage:" 1>&2
  echo "./check_duplicate.sh Directory1 [Directory2] [Directory3]" 1>&2
  exit 1
fi

/usr/bin/find $1 $2 $3 -type f | xargs -d '\n' sha1sum| sort -k 1 | uniq -Dw 40
