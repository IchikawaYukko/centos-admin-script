#!/bin/sh

# 通りゃんせ
# 
# パブリックドメイン
# 日本を本国とするこの著作物は、著作者（共同著作物にあっては、最終に死亡した著作者）の死亡した日、あるいは匿名、変名、団体によって発行された著作物はその発行日の、いずれかが属する年の翌年から起算して50年を経過したものであるため、日本の著作権法第51条、第52条、第53条及び第57条の規定により著作権の保護期間が満了しています。 
#
# 成立時期については「Wikipedia - 通りゃんせ」も参照

# Check Args
if [ $# -ne 1 ]; then
  echo "Usage:" 1>&2
  echo "./Toryanse.sh 1-4" 1>&2
  exit 1
fi

# 5A 5A 4G 5A 5A 4G 4E
# 5Bb 5Bb 5Bb 5D 5Bb 5A 5Bb 5A 4G 4G 5A

/usr/bin/beep -f 880 -l `expr 500 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 250 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 250 \* $1`  #4 G

/usr/bin/beep -f 880 -l `expr 250 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 659 -l `expr 500 \* $1`  #4 E

/usr/bin/beep -f 932 -l `expr 250 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 1174 -l `expr 250 \* $1`  #5 D
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A

/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 880 -l `expr 500 \* $1`  #5 A

# 5Bb 5Bb 5D 5Bb 5A 5Bb 5A 4G 4G 5A
# 4F 4F 5A 4F 4E 4F 4E 4D 4D 4E

/usr/bin/beep -f 932 -l `expr 250 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 375 \* $1`  #5 Bb
/usr/bin/beep -f 1174 -l `expr 125 \* $1`  #5 D
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A

/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 880 -l `expr 500 \* $1`  #5 A

/usr/bin/beep -f 698 -l `expr 375 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 880 -l `expr 250 \* $1`  #5 A
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E

/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 659 -l `expr 500 \* $1`  #4 E

# 4F 4F 4F 5A 5A 4F 4E 4F 4E 4D 4D 4E
# 5Bb 5Bb 5Bb 5Bb 5D 5D 5Bb 5A 5Bb 5A 4G 4G 5A 4F

/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 250 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E

/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 659 -l `expr 500 \* $1`  #4 E

/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 1174 -l `expr 125 \* $1`  #5 D
/usr/bin/beep -f 1174 -l `expr 125 \* $1`  #5 D
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A

/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 880 -l `expr 500 \* $1`  #5 A
#/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F

# 4F 4F 4F 4F 4F 5A 4F 4E 4F 4E 4D 4D 4E
# 5A 5A 5A 5A 5A 5A 4G 5A 5A 5A 4G 4D 4D 4E

/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E

/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 659 -l `expr 625 \* $1`  #4 E

/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G

/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 659 -l `expr 375 \* $1`  #4 E

# 4D 4E 4F 4G 5A 5Bb 5A 5Bb 5D 5E 5D 5Bb 5A 5A 4G 5A

/usr/bin/beep -f 587 -l `expr 125 \* $1`  #4 D
/usr/bin/beep -f 659 -l `expr 125 \* $1`  #4 E
/usr/bin/beep -f 698 -l `expr 125 \* $1`  #4 F
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 932 -l `expr 125 \* $1`  #5 Bb
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A

/usr/bin/beep -f 932 -l `expr 250 \* $1`  #5 Bb
/usr/bin/beep -f 1174 -l `expr 250 \* $1`  #5 D
/usr/bin/beep -f 1318 -l `expr 125 \* $1`  #5 E
/usr/bin/beep -f 1174 -l `expr 125 \* $1`  #5 D
/usr/bin/beep -f 932 -l `expr 250 \* $1`  #5 Bb

/usr/bin/beep -f 880 -l `expr 250 \* $1`  #5 A
/usr/bin/beep -f 880 -l `expr 125 \* $1`  #5 A
/usr/bin/beep -f 784 -l `expr 125 \* $1`  #4 G
/usr/bin/beep -f 880 -l `expr 750 \* $1`  #5 A

