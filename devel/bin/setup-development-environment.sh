#!/usr/bin/env bash

echo Starting local development machine setup

# Setup external ansible roles

ROLES_DIR=roles

ansible-galaxy install --force -r ${ROLES_DIR}/requirements.yml -p ${ROLES_DIR}

echo Finishing local development machine setup
