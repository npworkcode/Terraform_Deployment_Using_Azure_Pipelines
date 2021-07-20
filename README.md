# Terraform_Deployment_Using_Azure_Pipelines
Use Terraform Tasks to deploy a Virtual Machine, an AppService, NIC, AppService Plan, Network Security Group, Subnet and Resource Group to Azure using Azure Pipelines

[![Build Status](https://dev.azure.com/np3000/Terraform%20Deployment%20Using%20Azure%20Pipelines/_apis/build/status/npworkcode.Terraform_Deployment_Using_Azure_Pipelines?branchName=main)](https://dev.azure.com/np3000/Terraform%20Deployment%20Using%20Azure%20Pipelines/_build/latest?definitionId=8&branchName=main)

# Architecture Diagram
![Quality Build Releases Architecture Diagram](/images/project3_architectural_diagram.jpg)
# Execute terraform init
![terraform init](/images/01-log_output_of_terraform_init_ci-cd_pipeline.jpg)

# Execute terraform plan
![terraform plan](/images/02-log_output_of_terraform_plan_ci-cd_pipeline.jpg)


# Execute terraform apply
![terraform apply](/images/03-log_output_of_terraform_apply_ci-cd_pipeline.jpg)


# Display Public IP of Created VM
![vm public ip](/images/04-log_output_of_display_public_ip-ci-cd_pipeline.jpg)