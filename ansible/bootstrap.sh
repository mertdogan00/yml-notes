#!/bin/sh
set -e

export ANSIBLE_CONFIG=ansible/ansible.cfg

python -m venv ansible/.venv
ansible/.venv/bin/pip install -r ansible/requirements.txt
ansible/.venv/bin/ansible-galaxy install -r ansible/requirements.yml -p ansible/roles/galaxy_roles