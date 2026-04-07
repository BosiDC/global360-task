# global360
Built on Azure

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
