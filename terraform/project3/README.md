# project 3

## Scenario

You've take over an existing infrastructure environment. Everyone is keen that we don't lose our existing infrastructure.

## Solution

Important: you can assume that the suffix is a fixed string i.e. the random_id resource is no longer needed

- Recall your solution for [project1](../project1/main.tf), use it to migrate the existing infrastructure created by project1.

After the resources code were added to this project, the following cmds were executed to bring the infrastructure in to Terraform state:
terraform import 'module.env_resources[\"development\"].azurerm_resource_group.env' "/subscriptions/a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-de-1f7c3b1e"
terraform import 'module.env_resources[\"staging\"].azurerm_resource_group.env' "/subscriptions/a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-st-1f7c3b1e"
terraform import 'module.env_resources[\"production\"].azurerm_resource_group.env' "/subscriptions/a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-pr-1f7c3b1e"
terraform import 'module.env_resources[\"development\"].azurerm_storage_account.env' "/subscriptions/a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-de-1f7c3b1e/providers/Microsoft.Storage/storageAccounts/stp1de1f7c3b1e"
terraform import 'module.env_resources[\"staging\"].azurerm_storage_account.env' "/subscriptions/ a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-st-1f7c3b1e/providers/Microsoft.Storage/storageAccounts/stp1st1f7c3b1e"
terraform import 'module.env_resources[\"production\"].azurerm_storage_account.env' "/subscriptions/a919a4c2-2c39-4107-a548-8459224260c0/resourceGroups/rg-p1-pr-1f7c3b1e/providers/Microsoft.Storage/storageAccounts/stp1pr1f7c3b1e"