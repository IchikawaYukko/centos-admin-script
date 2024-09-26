#!/bin/bash

# flash disk access LED sequentially.
for i in $(zpool status $1|grep -o "wwn-0x[0-9a-f]\{16\}"); do dd if=/dev/disk/by-id/$i of=/dev/null bs=1M count=$2;done

