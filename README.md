# 🛠️ DevOps & Infrastructure as Code (Terraform) — 7-Day Sprint

Welcome to the official reference codebase for the **DevOps & Infrastructure as Code (Terraform)** course track on [letustransform.com](https://www.letustransform.com).

This standalone repository contains verified, production-ready HashiCorp Configuration Language (HCL) blueprints, linter configurations, and automated CI/CD pipeline quality gates across all 7 days of the hands-on DevOps sprint.

---

## 🗺️ 7-Day Curriculum & Learning Matrix

| Day | Topic & Focus Area | Directory | Key Concepts & Tools | Interactive Playbook |
| :---: | :--- | :--- | :--- | :---: |
| **Day 1** | IaC Foundations & Local Docker | [`day-1-nginx`](./day-1-nginx/) | HCL syntax, `kreuzwerker/docker` provider, resource creation, lifecycle | [Day 1 Playbook](https://www.letustransform.com/episodes/terraform-day-1) |
| **Day 2** | HCL Variables, Outputs & `tfvars` | [`day-2-variables`](./day-2-variables/) | Input variables, output values, environment `terraform.tfvars` files | [Day 2 Playbook](https://www.letustransform.com/episodes/terraform-day-2) |
| **Day 3** | State Management & Drift Detection | [`day-3-state-drift`](./day-3-state-drift/) | State inspection, JSON state structure, `plan -detailed-exitcode` drift detection | [Day 3 Playbook](https://www.letustransform.com/episodes/terraform-day-3) |
| **Day 4** | Modular Infrastructure Architecture | [`day-4-modules`](./day-4-modules/) | Child modules (`./modules/docker_web_app`), module inputs/outputs, reusability | [Day 4 Playbook](https://www.letustransform.com/episodes/terraform-day-4) |
| **Day 5** | Dynamic Code & Iteration Loops | [`day-5-dynamic-code`](./day-5-dynamic-code/) | `count`, `for_each`, dynamic block loops, map variables, collection transformation | [Day 5 Playbook](https://www.letustransform.com/episodes/terraform-day-5) |
| **Day 6** | Security Scanning & Static Audits | [`day-6-security-scanning`](./day-6-security-scanning/) | Static linting with `tflint`, Policy-as-Code with `checkov`, non-root container security context | [Day 6 Playbook](https://www.letustransform.com/episodes/terraform-day-6) |
| **Day 7** | CI/CD Pipeline & Quality Gates | [`day-7-cicd-pipeline`](./day-7-cicd-pipeline/) | GitHub Actions workflow (`terraform-ci.yml`), exit code quality gates (`ci-gate-check.sh`), `tfplan` | [Day 7 Playbook](https://www.letustransform.com/episodes/terraform-day-7) |

---

## 🧰 Prerequisites & Requirements

Before running the labs locally, ensure the following CLI tools are installed:

- **Terraform CLI**: `v1.5.0+` (Download from [HashiCorp Releases](https://releases.hashicorp.com/terraform/))
- **Container Engine**: [Docker Desktop](https://www.docker.com/) or [Colima](https://github.com/abiosoft/colima) (active daemon socket)
- **Static Linter (Day 6)**: [TFLint](https://github.com/terraform-linters/tflint) (`brew install tflint`)
- **Security Scanner (Day 6)**: [Checkov](https://github.com/bridgecrewio/checkov) (`brew install checkov` / `pip3 install checkov`)

---

## 🚀 Quick Start Guide

### 1. Clone the Repository
```bash
git clone https://github.com/letstrnsfrm-ai/devops-terraform-roadmap.git
cd devops-terraform-roadmap
```

### 2. Choose a Daily Lab Directory
For example, to run the **Day 4 Modular Architecture** lab:
```bash
cd day-4-modules
```

### 3. Execute Infrastructure Lifecycle
```bash
# 1. Initialize provider plugins and modules
terraform init

# 2. Preview infrastructure changes
terraform plan

# 3. Apply infrastructure resources
terraform apply -auto-approve

# 4. Verify local container endpoint
curl -I http://localhost:8080

# 5. Teardown resources when finished
terraform destroy -auto-approve
```

---

## 🛡️ Enterprise Production Context

Each daily lab directory is modeled after real-world enterprise infrastructure practices:
- **Zero Trust Security**: Non-root container security contexts (`user = "1001"`) and pinned provider versions.
- **Drift Detection**: Automated exit-code traps to catch manual infrastructure changes before deployment.
- **GitOps Quality Gates**: Automated CI pipelines that block pull requests if formatting, syntax validation, or static security scans fail.

---

## 🔗 Resources & Playbooks
- 🌐 Interactive Web Portal: [letustransform.com](https://www.letustransform.com)
- 📚 Full Roadmaps & Episodes: [letustransform.com/roadmaps](https://www.letustransform.com/roadmaps)
