# Day 1: IaC Foundations & Local Docker Infrastructure

Build your first **Infrastructure as Code (IaC)** blueprint using Terraform and the `kreuzwerker/docker` provider to provision an Nginx web container locally.

---

## 📋 Objectives
1. Define provider requirements in HCL (`terraform` and `provider "docker"` blocks).
2. Declare Docker image (`docker_image`) and container (`docker_container`) resources.
3. Bind container internal port 80 to external host port 8080.
4. Execute full infrastructure lifecycle (`init`, `plan`, `apply`, `curl`, `destroy`).

---

## 🛠️ Usage Instructions

```bash
# 1. Initialize Docker provider plugins
terraform init

# 2. Generate execution plan
terraform plan

# 3. Apply infrastructure (Provisions Nginx container on port 8080)
terraform apply -auto-approve

# 4. Verify HTTP endpoint
curl -I http://localhost:8080

# 5. Clean up container and image resources
terraform destroy -auto-approve
```

---

## 🔗 Interactive Playbook
- [Day 1 Interactive Guide](https://www.letustransform.com/episodes/terraform-day-1)
