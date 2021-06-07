#!/bin/bash

echo "Set host /etc/hosts"

cat << EOF > /etc/hosts
127.0.0.1 localhost
  
# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
EOF

cat $PWD/hosts >> /etc/hosts
echo "/etc/hosts"
tail  /etc/hosts

echo ""

#while read line; do
#j   host=($line)
#   host=${host[0]}
#   echo $host
#done < $PWD/hosts



#echo "Set ssh key to remote"
#echo $PWD
#ansible-playbook -i ${PWD}/inventory/multinode ${PWD}/deploy_init.yml -k


NAME=$(whoami)
echo "Copy id to remote"
while read line; do
    host=($line)
    host=${host[1]}
    echo $host
    echo $NAME
    cat ~/.ssh/id_rsa.pub | ssh $NAME@$host "cat - >> .ssh/authorized_keys" 
done < $PWD/hosts

#    cat ~/.ssh/id_rsa.pub | ssh $NAME@$ "cat - >> .ssh/authorized_keys" 
# id_rsa.pub의 내용을 서버로 보냅니다.


