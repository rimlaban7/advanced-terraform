# Azure Function App Project

## Overview

This project demonstrates the deployment of an Azure Function App using Terraform, Terraform Cloud and GitHub Actions for CI/CD. The empty running Linux Azure Function can be seen running here: https://terra-cloud-github-actions-function.azurewebsites.net/. 


<figure>
    <a href="/assets/GitHub_Terraform_Azure.jpg"><img src="/assets/GitHub_Terraform_Azure.jpg"></a>
</figure>

## Prerequisites

Before you begin, you'll need to have the following:

- An Azure subscription.
- A GitHub account.
- A Terraform Cloud account, with a workspace configured and mapped to this repository.
- Azure CLI installed locally (for development and testing).
- Your favorite IDE - I prefer Visual Studio Code with the below extensions installed
    - GitHub Actions
    - HashiCorp HCL 
    - HashiCorp Terraform


## Configuration

### Azure Subscription
1. **Azure Service Principal**: Create a service principal with `Contributor` access and configure it as a variable in Terraform Cloud. You can accomplish this in Azure Portal or via Azure CLI.

### Terraform Cloud

1. **Workspace Setup**: Ensure your Terraform Cloud workspace is set up and linked to your GitHub repository containing the Terraform configuration.
2. **Variables**: Configure the necessary environment variables and Terraform variables in your Terraform Cloud workspace. This includes Azure credentials, resource naming, and any other configurations specific to your deployment.
3. **State Storage**: Terraform Cloud will automatically manage the state of your infrastructure, providing a secure and collaborative environment for your team.

### GitHub Actions

1. **Workflow Configuration**: The `.github/workflows` directory contains the YAML files for GitHub Actions. These define the CI/CD pipeline. Changes are currently configured to only be manually deployed.  This is accomplished with a `workflow_dispatch` trigger in the GitHub actions workflows `plan-apply.yml` and `destroy.yml`. 
2. **Secrets**: Set up the required secrets in your GitHub repository variable and secrets settings. This should include access tokens for Terraform Cloud `TF_API_TOKEN`.
