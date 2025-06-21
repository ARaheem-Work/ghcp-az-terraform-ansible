#!/bin/bash
# Environment variables for Terraform Azure deployment

export ARM_SUBSCRIPTION_ID=""
export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_TENANT_ID=""

echo "ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID"
echo "ARM_CLIENT_ID=$ARM_CLIENT_ID"
echo "ARM_CLIENT_SECRET=$ARM_CLIENT_SECRET"
echo "ARM_TENANT_ID=$ARM_TENANT_ID"

export TF_LOG="INFO"
