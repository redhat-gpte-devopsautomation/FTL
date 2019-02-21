#!/usr/bin/env bash

# 
# wrapper script for grading playbook for lab
#
#

VIRTUALENV=/opt/virtualenvs/venv-grading
FTL_REPO_HOME=/opt/ftl-repo-clone/
COURSE_NAME=ansible_engine_foundations
LAB=03_01

source ${VIRTUALENV}/bin/activate
ansible --version
ansible-playbook grade_course.yml     \
  -e course_name=${COURSE_NAME}       \
  -e 

