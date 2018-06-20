#!/bin/bash
sudo su - wliang
export PATH=/home/wliang/miniconda3/bin:$PATH
cd /home/wliang/rabix-cli-1.0.5
env >> /home/wliang/error 2>&1
whoami >> /home/wliang/error 2>&1
/home/wliang/rabix-cli-1.0.5/rabix /home/wliang/rabix-cli-1.0.5/examples/dna2protein/dna2protein.cwl.json /home/wliang/rabix-cli-1.0.5/examples/dna2protein/inputs.json > /home/wliang/rabix-cli-1.0.5/status.txt 2>>/home/wliang/error
output=$(cat status.txt | grep path | awk -F '"' '{print $4}')
gsutil cp ${output} gs://dinglab/wliang_cwlrunner/output
