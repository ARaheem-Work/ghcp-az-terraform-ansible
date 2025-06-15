# Azure Resource Group Automation with Ansible

This repository provides an automated way to create Azure Resource Groups using Ansible playbooks inside a Dev Container. The environment includes the Azure CLI, Ansible, and all required dependencies for Azure automation.

## Features

- **Dev Container**: Pre-configured Ubuntu 22.04.5 LTS environment with Azure CLI and Ansible.
- **Ansible Playbook**: Automates Azure Resource Group creation.
- **Environment Variables**: Scripted setup for Azure authentication.
- **Sample Variable Files**: Easily customize resource group names and locations.

## Getting Started

### 1. Open in Dev Container

Open this repository in a compatible development environment (such as VS Code with Dev Containers) to use the pre-installed tools.

### 2. Set Azure Credentials

Edit `env_vars.sh` with your Azure service principal credentials and subscription details.

```sh
source env_vars.sh
```

### 3. Log in to Azure

Authenticate using the service principal:

```sh
az login --service-principal \
  -u "$AZURE_CLIENT_ID" \
  -p "$AZURE_SECRET" \
  --tenant "$AZURE_TENANT"
```

### 4. Customize Variables

Edit `vars.yml` to set your desired resource group name and location.

```yaml
name: myResourceGroup
location: eastus2
```

### 5. Run the Ansible Playbook

```sh
ansible-playbook create_rg.yml -e @vars.yml
```

## File Overview

- `create_rg.yml` — Ansible playbook to create a resource group.
- `vars.yml` — Example variables file for playbook input.
- `env_vars.sh` — Script to export Azure authentication environment variables.
- `.devcontainer/setup.sh` — Installs Ansible and Azure dependencies in the dev container.

## Troubleshooting

- Ensure your service principal has the correct permissions on the target subscription.
- If you see "No subscriptions found", verify your credentials and role assignments.

## Resources

- [Ansible Azure Collection Docs](https://docs.ansible.com/ansible/latest/collections/azure/azcollection/)
- [Azure CLI Docs](https://learn.microsoft.com/en-us/cli/azure/)

---
*This project is intended for development and learning purposes.*