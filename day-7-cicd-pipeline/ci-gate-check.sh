#!/usr/bin/env bash
set -e

TF_BIN="./terraform"
if ! command -v terraform &> /dev/null; then
  if [ -f "./terraform" ]; then
    TF_BIN="./terraform"
  fi
else
  TF_BIN="terraform"
fi

echo "=== 1. Checking Code Formatting ==="
$TF_BIN fmt -check || { echo "❌ Code formatting error! Run '$TF_BIN fmt'"; exit 1; }

echo "=== 2. Validating HCL Syntax ==="
$TF_BIN init -backend=false
$TF_BIN validate || { echo "❌ HCL syntax validation failed!"; exit 1; }

echo "=== 3. Generating Execution Plan ==="
export DOCKER_HOST="${DOCKER_HOST:-unix://$HOME/.colima/default/docker.sock}"
$TF_BIN plan -no-color -out=tfplan || { echo "❌ Terraform plan failed!"; exit 1; }

echo "✅ ALL QUALITY GATES PASSED! Ready for deployment."
