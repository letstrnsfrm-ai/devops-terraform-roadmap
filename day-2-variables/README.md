# Day 2: HCL Variables, Outputs & Environment `tfvars`

Parametrize Terraform blueprints using HCL input variables (`variables.tf`), output values (`outputs.tf`), and environment-specific variable files (`dev.tfvars`, `prod.tfvars`).

---

## 📋 Objectives
1. Separate blueprint configuration into `main.tf`, `variables.tf`, `outputs.tf`, and `terraform.tfvars`.
2. Override input variables dynamically using CLI flags (`-var`) and `-var-file`.
3. Expose container IDs and IP endpoints using Terraform outputs.
4. Execute environment parameter testing.

---

## 🛠️ Usage Instructions

```bash
# 1. Initialize Docker provider
terraform init

# 2. Apply default terraform.tfvars configuration
terraform apply -auto-approve

# 3. Apply custom environment configuration
terraform apply -var-file="prod.tfvars" -auto-approve

# 4. View output values
terraform output

# 5. Clean up infrastructure
terraform destroy -auto-approve
```

---

## 🔗 Interactive Playbook
- [Day 2 Interactive Guide](https://www.letustransform.com/episodes/terraform-day-2)
