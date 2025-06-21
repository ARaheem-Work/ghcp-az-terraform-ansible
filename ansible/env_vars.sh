#! /bin/bash
# This script sets environment variables for Azure authentication



export AZURE_TENANT=""
export AZURE_SUBSCRIPTION_ID=""

export AZURE_CLIENT_ID=""
export AZURE_SECRET=""

echo "********************"

echo AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID
echo AZURE_CLIENT_ID=$AZURE_CLIENT_ID
echo AZURE_SECRET=$AZURE_SECRET
echo AZURE_TENANT=$AZURE_TENANT


# export RESOURCE_GROUP_NAME="tf-app-rg"
# export APP_SERVICE_NAME="tf-basic-app"

# echo RESOURCE_GROUP_NAME=$RESOURCE_GROUP_NAME
# echo APP_SERVICE_NAME=$APP_SERVICE_NAME

# ansible-playbook -i localhost, ./configure_app_service.yml --extra-vars "resource_group_name=$RESOURCE_GROUP_NAME app_service_name=$APP_SERVICE_NAME"
