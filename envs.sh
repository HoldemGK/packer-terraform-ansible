#!/bin/bash

export KEY_JSON=/home/keys/key-packer.json
export ZONE=us-east1-b
export MACHINE_TYPE=n1-standard-1
export IMAGE_DESCR=packer-image

# USER in GCP created automatic

export PROJECT=$(gcloud info --format='value(config.project)')
export IMAGE_PACKER=$(gcloud compute images list --format="value(NAME)" --filter=ubuntu-1804)
