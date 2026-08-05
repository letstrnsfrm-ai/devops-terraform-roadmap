# Day 3: State Deep Dive & Detailed Exitcode Drift Detection

Master **Terraform State Architecture**, state inspection commands (`state show`, `state list`), JSON state metadata structure, and automated infrastructure drift detection using `plan -detailed-exitcode`.

---

## 📋 Objectives
1. Inspect local `terraform.tfstate` structure and resource mapping.
2. Simulate out-of-band infrastructure drift (e.g. manual container stopping/modification).
3. Use shell exit code traps to detect state drift (`terraform plan -detailed-exitcode`).
4. Reconcile state drift back to target HCL specification.

---

## 🛠️ Usage Instructions

```bash
# 1. Initialize and apply base infrastructure
terraform init
terraform apply -auto-approve

# 2. Inspect state mapping
terraform state list
terraform state show docker_container.web_app

# 3. Test detailed exit code drift detection
terraform plan -detailed-exitcode || EXIT_CODE=$?
echo "Drift Detection Exit Code: $EXIT_CODE"

# 4. Clean up infrastructure
terraform destroy -auto-approve
```

---

## 🔗 Interactive Playbook
- [Day 3 Interactive Guide](https://www.letustransform.com/episodes/terraform-day-3)
