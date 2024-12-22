#!/bin/sh
#
# Play audio tones every hour.
#
# Usage:
# Install in crontab like below
# 59 * * * * /path/to/beepmusic/timesignal.sh

/bin/sleep 56

/usr/bin/beep -f 440 -l 200 -D 800
/usr/bin/beep -f 440 -l 200 -D 800
/usr/bin/beep -f 440 -l 200 -D 800
/usr/bin/beep -f 880 -l 1000

