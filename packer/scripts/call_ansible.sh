#!/bin/bash
source /tmp/venv/bin/activate && ANSIBLE_FORCE_COLOR=1 PYTHONUNBUFFERED=1 /tmp/venv/bin/ansible-playbook "$@"
