#!/bin/bash
echo "$[120 * 1024*1024*1024]" > /sys/module/zfs/parameters/zfs_arc_max

