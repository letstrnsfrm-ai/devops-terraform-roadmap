# Day 6: Infra Security Scanning & Static Audits

Integrate **TFLint** and **Checkov** static analysis tools to catch provider version bugs, unpinned dependencies, and container security flaws before deployment.

---

## 📋 Objectives
1. Configure `.tflint.hcl` static linter rules for provider versions and unused variable declarations.
2. Execute Checkov static analysis to audit infrastructure code against Policy-as-Code security benchmarks.
3. Harden Terraform blueprints (`main.tf`) by pinning provider versions (`kreuzwerker/docker 3.0.2`) and setting non-root container security context (`user = "1001"`).
4. Run full Terraform lifecycle validation (`init`, `apply`, endpoint audit, `destroy`).

---

## 🛠️ Usage Instructions

### 1. Static Linting (TFLint)
```bash
# Initialize TFLint plugins
tflint --init

# Execute static linter checks
tflint
```

### 2. Policy-as-Code Security Scanning (Checkov)
```bash
# Run Checkov scanner against current directory
checkov -d . --framework terraform
```

### 3. Deploy & Verify Infrastructure
```bash
# Initialize provider plugins
./terraform init

# Apply hardened blueprint
./terraform apply -auto-approve

# Audit running endpoint (port 8090)
curl -I http://localhost:8090

# Teardown infrastructure
./terraform destroy -auto-approve
```
