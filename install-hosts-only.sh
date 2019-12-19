#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib_sh/echos.sh
source ./lib_sh/requirers.sh

# ###########################################################
# /etc/hosts -- spyware/ad blocking
# ###########################################################
action "cp /etc/hosts /etc/hosts.backup"
sudo cp /etc/hosts /etc/hosts.backup
ok
action "cp ./configs/hosts /etc/hosts"
sudo cp ./configs/hosts /etc/hosts
ok
bot "Your /etc/hosts file has been updated. Last version is saved in /etc/hosts.backup"

sudo dscacheutil -flushcache

bot "Woot! All done"
