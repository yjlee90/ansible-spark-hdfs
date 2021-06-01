#!/bin/bash

echo "Set host /etc/hosts"
sed '/bigdata/d'/etc/hosts
#cat $PWD/inventory/hosts >> /etc/hosts


while read line; do
   host=($line)
   host=${host[0]}
   echo $host
done < $PWD/inventory/hosts


echo "Set ssh key to remote"
echo $PWD
#ansible-playbook -i ${PWD}/inventory/multinode ${PWD}/deploy_init.yml -k


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


