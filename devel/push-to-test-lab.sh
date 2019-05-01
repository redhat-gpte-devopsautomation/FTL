#!/usr/bin/env bash

# Tony Kay, tok@redhat.com

# Sample script pushes a branch to a remote grader host
# 1) speeds up testing without requiring a new deploy


# Developer supplied inventory for grader_host(s)

TEST_INVENTORY=${TEST_INVENTORY:-./devel/inventories/test-inventory}

# Developr supplied dummy vars see: `./devel/sample-vars.yml`

TEST_VARS=${TEST_VARS:-./devel/sample-vars.yml}

# AWS Creds and github pull secret 
SECRET_VARS=${SECRET_VARS:-~/secret.yml}

# Which branch to push - defaults to master
BRANCH=${BRANCH:-master}


ansible-playbook devel/setup-grading-host.yml     \
  -i ${TEST_INVENTORY}   \
  -e @${TEST_VARS}       \
  -e @${SECRET_VARS}     \
  -e ${BRANCH}           \
  -b
