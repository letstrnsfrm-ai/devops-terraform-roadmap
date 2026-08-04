# Day 3: State Deep Dive & Detailed Exitcode Drift Detection

- **Online Course Guide**: [https://www.letustransform.com/episodes/terraform-day-3](https://www.letustransform.com/episodes/terraform-day-3)

## 📋 Instructions

```bash
# 1. Initialize and apply infrastructure
terraform init
terraform apply -auto-approve

# 2. Inspect state
terraform state list
terraform state show docker_container.drift_demo

# 3. Simulate out-of-band drift
docker stop qe_drift_demo_container
docker rm qe_drift_demo_container

# 4. Audit drift with detailed exit code (returns exit code 2)
terraform plan -detailed-exitcode || EXIT_CODE=$?
echo "Recorded Exit Code: $EXIT_CODE"

# 5. Reconcile and destroy
terraform apply -auto-approve
terraform destroy -auto-approve
```
