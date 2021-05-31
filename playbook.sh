#!/bin/bash
ansible-playbook -i inventory/multinode.txt install_cluster.yml  -vv
