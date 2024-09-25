#!/bin/bash
for i in $(lsscsi -sw|grep -o "0x[0-9a-f]\{16\}");do zpool status|grep -q $i;if [ $? = 1 ];then lsscsi -sw | grep $i;fi;done

