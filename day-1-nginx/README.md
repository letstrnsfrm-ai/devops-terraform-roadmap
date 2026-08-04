# Day 1: IaC Foundations & Local Docker Infrastructure

- **Online Course Guide**: [https://www.letustransform.com/episodes/terraform-day-1](https://www.letustransform.com/episodes/terraform-day-1)

## 📋 Instructions

```bash
# 1. Initialize Docker provider
terraform init

# 2. Generate execution plan
terraform plan

# 3. Apply infrastructure (Provisions Nginx container on port 8080)
terraform apply -auto-approve

# 4. Verify HTTP endpoint
curl -I http://localhost:8080

# 5. Clean up container
terraform destroy -auto-approve
```
