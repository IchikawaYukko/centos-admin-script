#!/bin/bash

/usr/bin/mysqldump -A -u root --single-transaction --opt > /mnt/backup/mysql_`date +%Y%m%d`.sql
