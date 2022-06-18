# project 1

## Scenario

You've been asked to review this project. Can you provide any feedback.

- Is this a good solution?
No. Resources are unnecessarily duplicated.

- Will it scale? i.e. what will happen as you continue to add new environments or resources
No. For each new environment, an additional set of resources will need to be added.
For new resources, they will need to be added per environment.

## Solution

You can assume this project has never been run, so there is no migration strategy required.

- Update the project along with documentation (update this README.md)

## Revised solution

The resource group and storage account resources have been placed in to a module and a for_each loop used to iterate over each environment.