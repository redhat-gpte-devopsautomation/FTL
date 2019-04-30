#!/usr/bin/env bash

# Sample script pushes a branch to a remote grader host

# AWS Creds and github pull secret 
SECRET_VARS=${SECRET_VARS:-~/secret.yml}

# Developer supplied inventory for grader_host(s)
# Examples here: 

TEST_INVENTORY=./devel/inventories/test-inventory
TEST_INVENTORY=./devel/inventories/test-inventory

# Which branch to push - defaults to master
BRANCH=master

ansible-playbook devel/setup-grading-host.yml     \
  -i ${TEST_INVENTORY:-master}                    \
  -e @${TEST_VARS:-./devel/sample-vars.yml}       \
  -e @${SECRET_VARS}                               \
  -e ${BRANCH:-master}                            \
  -b

