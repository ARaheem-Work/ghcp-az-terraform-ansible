#!/bin/bash
# This script initializes and applies the Terraform configuration to deploy the Azure App Service

export TF_LOG="DEBUG"

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Initializing Terraform..."
terraform init

echo "Planning Terraform deployment..."
terraform plan -out=tfplan

echo "Applying Terraform deployment..."
terraform apply -auto-approve tfplan

echo "Deployment complete."
