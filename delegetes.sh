#### Install the delegates in a single click

!#/bin/bash
## To lauch Infra using terraform
snap install terraform --classic
terraform init
terraform apply --auto-approve

### Install the HELM delegetEs 
snap install helm --classic
chmod 400 helm.sh
sh helm.sh
sh docker.sh

## Install the Kubernetes delegetEs 
kubectl apply -f k8s.yml  
