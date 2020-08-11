# Packer, Ansible and Terraform together in Google Cloud Platform

# Export environment variable from script
source envs.sh

### Set up Terraform Service Account

```
gcloud iam service-accounts create terraform \

   --display-name "Terraform admin account"

gcloud projects add-iam-policy-binding ${PROJECT} \

   --member serviceAccount:terraform@${PROJECT}.iam.gserviceaccount.com \

   --role roles/editor

gcloud iam service-accounts keys create key.json \

   --iam-account terraform@${PROJECT}.iam.gserviceaccount.com
```
