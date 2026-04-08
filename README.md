# global360 task

## Azure
I have decided to build this on Azure as I have extensive experience building on AWS but have no experience in Azure. I thought this task was a great opportunity to show that with my Terraform experience I am able to build on public clouds that I do not have much working/hands-on experience in. 

## Steps to run
### Authenticate Terraform to Azure
1. Authenticate Terraform to Azure using Azure CLI: `az login`
1. Create a Service Principal: `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"`
1. Set environment variables: 
```
export ARM_CLIENT_ID="<APPID_VALUE>"
export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
export ARM_TENANT_ID="<TENANT_VALUE>"
```
### Running Terraform
1. Change directory to the terraform folder `cd terraform/`
1. Run Terraform plan: `terraform plan --var-file=./environments/dev.tfvars -out=tfplan`
1. Run Terraform apply: `terraform apply tfplan`

## Architecture diagram

## Estimated monthly cost


# Task Description
## Goal:
Stand up an auto-healing web tier that can lose any single VM without downtime.

## Must-haves
1. Self-healing – terminating an instance triggers the platform to replace it automatically.
1. Self-provisioning (IaC only) – one command stands everything up; a second run makes no changes.
1. N + 1 capacity – traffic is spread across at least two instances behind a load balancer.
1. Static web page – a default NGINX “welcome” page (or equivalent) is sufficient.
1. Templates
    Preferred: Terraform v-latest
    Allowed: Bicep / ARM (Azure) or CloudFormation / CDK (AWS)
    Choose either Azure or AWS and briefly explain your choice in the README.

## Optional bonus
1. Containerise the page:
1. Provide a Dockerfile.
1. Push the image to a free registry (e.g., GitHub Container Registry, Docker Hub).
1. Use user-data / cloud-init to pull and run the image automatically on each VM.

## Deliverables
1. IaC code – clear modules, variables, tagging and naming conventions.
1. README.md
    Steps to run a plan and (optionally) an apply.
    Architecture diagram (hand-drawn, Visio, draw.io, etc.).
    Assumptions and estimated monthly cost (≤ AUD 20 if fully deployed).
1. Pipeline (optional) – lint / validate / plan-only is sufficient.
1. Commit history – incremental commits so we can follow your process.

## Logistics
1. Target effort: approximately 7–8 focused hours.
1. Return a link to your Git repository within 5 calendar days.
1. Provisioning the underlying infrastructure is completely optional, we will only review terraform plan outputs only.
