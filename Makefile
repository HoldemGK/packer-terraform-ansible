create-key:
	[ -d /home/keys ] || mkdir /home/keys
	gcloud iam service-accounts create terraform \
	   --display-name "Terraform admin account" \
		 --project=${PROJECT} && gcloud projects add-iam-policy-binding ${PROJECT} \
	   --member serviceAccount:terraform@${PROJECT}.iam.gserviceaccount.com \
	   --role roles/editor
	gcloud iam service-accounts keys create /home/keys/key.json \
	   --iam-account terraform@${PROJECT}.iam.gserviceaccount.com

terraform-init:
	cd terraform && terraform init && cd -

terraform-plan:
	cd terraform && terraform plan && cd -

terraform-apply:
	cd terraform && terraform apply && cd -

packer-build:
	cd packer && packer build template.json && cd -
