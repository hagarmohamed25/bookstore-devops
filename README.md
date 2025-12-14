# bookstore-app-v2
****
# Project Architecture Overview


| Stage | Tool | Purpose |
|-------|------|---------|
| Development | Local Repo | Code development |
| CI/CD | GitHub Actions | Build & push Docker images |
| Registry | Amazon ECR | Store Docker images |
| Infrastructure | Terraform | Provision AWS resources |
| Configuration | Ansible | Apply K8s manifests |
| Deployment | Amazon EKS | Run application containers |

```
![Diagram](assets/Diagram%20of%20Project.png)

```
********
# Project Structure
```
bookstore-devops/
├── .github/
│   └── workflows/
│       ├── deploy.yml         # Main CI/CD pipeline
│       └── destroy.yml        # Automated cleanup pipeline
├── ansible/
│   └── playbook.yml           # Playbook to deploy app to K8s
├── terraform/
│   ├── main.tf                # Main AWS infrastructure (EKS, VPC)
│   ├── variables.tf           # Input variables for Terraform
│   ├── outputs.tf             # Outputs from Terraform (like EKS name)
│   └── ecr.tf                 # ECR repository definitions
└── kubernetes/
    ├── backend-deployment.yml
    ├── frontend-deployment.yml
    ├── backend-service.yml
    ├── frontend-service.yml
    └── ingress.yml            # To expose the app publicly
