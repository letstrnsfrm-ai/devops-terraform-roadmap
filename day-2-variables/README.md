# Day 2: HCL Variables, Outputs & Environment tfvars

- **Online Course Guide**: [https://www.letustransform.com/episodes/terraform-day-2](https://www.letustransform.com/episodes/terraform-day-2)

## 📋 Instructions

```bash
# 1. Initialize Docker provider
terraform init

# 2. Apply infrastructure (Uses terraform.tfvars: port 9090)
terraform apply -auto-approve

# 3. Test HTTP URL output
curl -I http://localhost:9090

# 4. Clean up container
terraform destroy -auto-approve
```
