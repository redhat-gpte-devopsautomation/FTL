#!/usr/bin/env bash

# Sample script pushes a branch to a remote grader host

# AWS Creds and github pull secret 
SECRET_VARS=~/secret.yml

# Developer supplied inventory for grader_host(s)
# Examples here: 

TEST_INVENTORY=
# Which branch to push - defaults to master
BRANCH=master

ansible-playbook devel/setup-grading-host.yml             \
  -i ${TEST_INVENTORY:-master}                            \
  -e ${SECRET_VARS}                                       \
  -e @devel/test-data-and-inventories/sample-vars.yml     \  
  -e ${BRANCH:-master}                            \
  -b 

