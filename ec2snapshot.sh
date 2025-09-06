#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@52.221.196.128 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED -n MyCluster02; ~/update_snapshot.sh data 2 MyCluster02"
