#!/bin/bash
ansible-playbook -i inventory/multinode playbooks/start_cluster.yml  -vv
