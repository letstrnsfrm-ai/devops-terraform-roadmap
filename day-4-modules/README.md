# Day 4: Reusable Modular Architecture & Child Modules

Master **Terraform Modules** by encapsulating infrastructure logic into reusable child modules (`./modules/docker_web_app`) with strict input contracts and output exposures.

---

## 📋 Objectives
1. Construct reusable child module structure in `./modules/docker_web_app/` (`main.tf`, `variables.tf`, `outputs.tf`).
2. Instantiate child modules in the root blueprint (`main.tf`) with custom parameter values.
3. Expose child module outputs in root `outputs.tf`.
4. Validate provider inheritance and modular state organization.

---

## 📂 Module Directory Structure
```
day-4-modules/
├── main.tf                 # Root module instantiation
├── outputs.tf              # Root module outputs
├── variables.tf            # Root input variables
└── modules/
    └── docker_web_app/     # Reusable child module
        ├── main.tf         # Container & image resources
        ├── outputs.tf      # Child module exports (container_id, endpoint)
        └── variables.tf    # Required module input contracts
```

---

## 🛠️ Usage Instructions

### 1. Initialize & Apply Modular Blueprint
```bash
# Initialize provider plugins and child module sources
terraform init

# Preview modular plan
terraform plan

# Deploy modular infrastructure
terraform apply -auto-approve
```

### 2. Verify Output & Endpoint
```bash
# Inspect root module outputs
terraform output

# Test container endpoint
curl -I http://localhost:8080
```

### 3. Teardown Infrastructure
```bash
terraform destroy -auto-approve
```
