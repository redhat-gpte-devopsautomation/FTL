#!/usr/bin/env bash

# Author: tony kay tok@redhat.com
# Date: 2019-02-12
#
# Very basic and simple shell script to activate a virtualenv prior
# to executing the grading playbook

# Setup the 

export VIRTUAL_ENV_HOME=~/Dropbox/virtual-envs/
export VIRTUAL_ENV_ENVIRONMENT=latest

source ${VIRTUAL_ENV_HOME}${VIRTUAL_ENV_ENVIRONMENT}/bin/activate

# potentially call setup playbook here e.g. if you have `pip -r requirements.txt tasks etc`

# insert grading playbook run here

