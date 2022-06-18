# project 2

## Scenario

We did some copy and pasting and ending creating resources with the name of "example".

We want to rename the resources from from "example" to "dev".

Unfortunately if we do this and then try to plan we see that Terraform will have to recreate the resources.

Can you think of a way for us to rename the resource to "dev" without having to recreate all the resources?

## Solution

- Update this README.md with the instructions to solve the problem

Execute the following cmds to rename the resources in state and avoid them from being recreated:
terraform state mv azurerm_resource_group.example azurerm_resource_group.dev
terraform state mv azurerm_storage_account.example azurerm_storage_account.dev

If Terraform v1.1 was used, the moved block could be used instead:
https://www.terraform.io/language/modules/develop/refactoring