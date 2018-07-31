# ICP-POWER-Up
Install ICP via POWER-Up

# How it Works
The config YAML file in this repo is only a snippet used to deploy a cluster. Add the section in this repo to the bottom of your actual config script.

POWER-Up will identify a single node via the hostname, for our example the hostname is server-1.

This single node will become the ICP Master. The Bash script in this repo will be executed on that single ICP Master node.

Instructions for installing ICP-CE from:
https://www.ibm.com/support/knowledgecenter/en/SSBS6K_2.1.0.2/installing/install_containers_CE.html

# Instructions

Follow instructions on POWER-Up repo: https://github.com/open-power-ref-design-toolkit/power-up

In summary:

Launch your cluster ```pup deploy config.yaml```

Remove your cluster ```teardown switches --data config.yml; teardown deployer --container  config.yml```

Deploy software on nodes only ```pup post-deploy config.yml```
