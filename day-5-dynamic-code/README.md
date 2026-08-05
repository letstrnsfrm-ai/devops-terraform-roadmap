# Day 5: Dynamic Code & Iteration Loops

Master **HCL Iteration Patterns** using `count`, `for_each`, `dynamic` blocks, and map variable transformation to eliminate code duplication.

---

## 📋 Objectives
1. Implement `for_each` loops to dynamically provision multiple container environments (`dev`, `staging`, `prod`) from a map variable.
2. Construct nested `dynamic "ports"` blocks to dynamically generate port mappings.
3. Utilize HCL collection functions (`keys`, `values`, `for` expressions) for outputs.
4. Execute full infrastructure apply and multi-endpoint verification.

---

## 🛠️ Usage Instructions

### 1. Preview Dynamic Execution Plan
```bash
# Initialize provider plugins
terraform init

# Preview dynamic loop generation
terraform plan
```

### 2. Apply Dynamic Infrastructure
```bash
# Deploy multi-container environment
terraform apply -auto-approve
```

### 3. Audit Active Endpoints
```bash
# Audit dev container (port 8081)
curl -I http://localhost:8081

# Audit staging container (port 8082)
curl -I http://localhost:8082

# Audit prod container (port 8083)
curl -I http://localhost:8083
```

### 4. Teardown Infrastructure
```bash
terraform destroy -auto-approve
```
