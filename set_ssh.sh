#!/bin/bash

echo "Set host /etc/hosts"
cat $PWD/inventory/hosts >> /etc/hosts

#echo "Generate ssh-key"
#echo -e "\n\n\n" | ssh-keygen -t rsa -N ""

NAME=$(whoami)
echo "Copy id to remote"
while read line; do
    host=($line)
    host=${host[0]}
    echo $host
    echo $NAME
    cat ~/.ssh/id_rsa.pub | ssh $NAME@$host "cat - >> .ssh/authorized_keys" 

done < $PWD/inventory/hosts

#    cat ~/.ssh/id_rsa.pub | ssh $NAME@$ "cat - >> .ssh/authorized_keys" 
# id_rsa.pub의 내용을 서버로 보냅니다.


