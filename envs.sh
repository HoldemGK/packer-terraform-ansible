#!/bin/bash
# ---  Validate environment variables - Tick/OK, Cross/Not OK
function statusCheck(){
  if [ -z "$1" ]
  then
    printf "\u274c $2\n"
  else
    printf "\u2714 $2\n"
  fi
}

export KEY_JSON=/home/keys/key.json
export REGION=us-east1
export ZONE=us-east1-b
export MACHINE_TYPE=n1-standard-1
export IMAGE_DESCR=packer-image
export IMAGE_FAMILY=packer-family
export SERVER_NAME=staging

# Call the function statusCheck to validate the environment
statusCheck "$KEY_JSON" "KEY_JSON"
statusCheck "$REGION" "REGION"
statusCheck "$ZONE" "ZONE"
statusCheck "$MACHINE_TYPE" "MACHINE_TYPE"
statusCheck "$IMAGE_DESCR" "IMAGE_DESCR"
statusCheck "$IMAGE_FAMILY" "IMAGE_FAMILY"
statusCheck "$SERVER_NAME" "SERVER_NAME"

# USER in GCP created automatic
export PROJECT=$(gcloud info --format='value(config.project)')
export IMAGE_SOURCE=$(gcloud compute images list --format="value(NAME)" --filter="family=ubuntu-1804-lts")

# TERRAFORM SPECIFIC ENV VARS - EQUAL TO THE ONES ABOVE, JUST NAMED DIFFERENTLY
export TF_VAR_key=${KEY_JSON}
export TF_VAR_server_name=${SERVER_NAME}
export TF_VAR_region=${REGION}
export TF_VAR_zone=${ZONE}
export TF_VAR_machine_type=${MACHINE_TYPE}
export TF_VAR_project=${PROJECT}
export TF_VAR_image_family=${IMAGE_FAMILY}
