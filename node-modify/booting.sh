#!/bin/bash

## color
. bash_color.sh

## sub-method
check_command() {
    command
    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

## task
# 
# printf "task ${Blue}something${NC} starting\n"
# check_command do something
# if [ $? -eq 0 ]; then
#     printf "task ${Green}something${NC} done\n"
# else
#     printf "task ${Red}something${NC} ...\n"
# fi
#   

printf "task ${Blue}check /opt/www/rand exist or not${NC} starting\n"
check_command ls -l /opt/www/rand
if [ $? -eq 0 ]; then
    printf "task ${Green}/opt/www/rand exist!${NC} done\n"
else
    printf "task ${Red}/opt/www/rand shell be created${NC} ...\n"
    mkdir /opt/www/rand
fi

## keep running
tail -f /dev/null
