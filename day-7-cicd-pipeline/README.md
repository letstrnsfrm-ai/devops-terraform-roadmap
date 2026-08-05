# Day 7: CI/CD Pipeline Automation & Quality Gates

Automate **Terraform Plan & Apply** in GitHub Actions CI/CD pipelines with automated pull-request exit code validation quality gates.

---

## 📋 Objectives
1. Create declarative GitHub Actions quality gate workflow (`.github/workflows/terraform-ci.yml`).
2. Construct local pipeline runner verification script (`ci-gate-check.sh`) to test format, syntax, and plan execution locally before opening PRs.
3. Validate exit code enforcement (`set -e`) and automated plan artifact generation (`tfplan`).
4. Execute full infrastructure apply & teardown validation lifecycle.

---

## 🛠️ Usage Instructions

### 1. Execute Local CI Quality Gate Check
```bash
chmod +x ci-gate-check.sh
./ci-gate-check.sh
```

### 2. Deploy & Test Infrastructure
```bash
# Initialize provider plugins
./terraform init

# Apply infrastructure plan
./terraform apply -auto-approve

# Verify web endpoint on port 8091
curl -I http://localhost:8091

# Teardown infrastructure and cleanup
./terraform destroy -auto-approve
rm -f tfplan
```
