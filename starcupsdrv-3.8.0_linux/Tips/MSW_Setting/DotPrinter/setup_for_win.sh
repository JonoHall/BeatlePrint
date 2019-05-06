#!/bin/sh
#
# Memory Swtich Setting Script for SP700 under Mac OS X
# <Setting for Windows PC>
#
# How to use:
#
# 1) Set SP700 as a Default printer
# 2) Copy this script (setup_for_win.sh) and win.dat into home folder.
# 3) Execute Termnal which is in the "Utilities" of "Applications",
#    then input "./setup_for_win_jp.sh" and return Enter key.
# 4) After execution, printer will print self test.
#    Please verify print result of <4> line in "-- Memory Switch --" part.
#    8th digit and 9th digit of the <4> line should be set to "0" or <4> line has been
#    disappeared.
#
#    Sample: 
#        <4> 0000000000000000 0000
#
lpr -o raw Enable.dat
#
#
# Note:
# If you can not set SP700 as a default printer, refer to the following
# procedure.
#
# 1) Using following command, printer queue lists, print queue names,
#    and default printer will be displayed.
#
#    $ lpstat -p -d
#
#    dispaly example:
#       star-no-power-mac-g4:~ star$ lpstat -p -d       
#       printer Star_SP712__STR_001_ is idle.  enabled since Jan 01 00:00
#       system default destination: Star_SP712__STR_001_
#
#    "Star_SP712__STR_001_" is printer queue name.
#
# 2) Use following commands to set the selected printer
#    Input printer queue names into "Printer-queue name" according to "$ lpstat -p -d command".
#
#    $ lpr -o raw Enable.dat -P "Printer-queue name"
#
#    Example
#       star-no-power-mac-g4:~ star$ lpr -o raw Enable.dat -P Star_SP712__STR_001_
#
# 2016/05/20 Star Micronics co.,ltd.