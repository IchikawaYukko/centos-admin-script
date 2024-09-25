#!/bin/bash
for i in $(zpool list -v $1|grep -o "0x[0-9a-f]\{16\}"); do lsscsi -sw|grep $i; done
