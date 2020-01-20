#!/bin/bash

export KEY_JSON=/home/keys/key-packer.json
export ZONE=us-east1-b
export MACHINE_TYPE=n1-standard-1
export IMAGE_DESCR=packer-image
export SERVER_NAME=staging
# USER in GCP created automatic
export PROJECT=$(gcloud info --format='value(config.project)')
export IMAGE_PACKER=$(gcloud compute images list --format="value(NAME)" --filter=ubuntu-1804)

# TERRAFORM SPECIFIC ENV VARS - EQUAL TO THE ONES ABOVE, JUST NAMED DIFFERENTLY

TF_VAR_pub_key=${PUB_KEY}
TF_VAR_pvt_key=${PVT_KEY}
TF_VAR_ssh_fingerprint=${SSH_FINGERPRINT}
TF_VAR_server_name=${SERVER_NAME}
TF_VAR_zone=${ZONE}
TF_VAR_machine_type=${MACHINE_TYPE}
