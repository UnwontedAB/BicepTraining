# Lab 3: Using module to share code

In this lab you will create your first Bicep module.

## Lab overview

Below are the steps performed during this lab.

### Mandatory
- Modify an existing template with parameters and decorators
- Consume the module from a template named `main.bicep`
- Deploy the template to Azure

### Optional
- Create an Azure Container Registry
- Publish the module to the ACR
- Edit `main.bicep` to consume the module from registry

### Documentation

You can find documentation to help you with this lab here:

- [Bicep syntax: Decorators](https://learn.microsoft.com/azure/azure-resource-manager/bicep/file#decorators)
- [Outputs in Bicep](https://learn.microsoft.com/azure/azure-resource-manager/bicep/outputs?tabs=azure-powershell)
- [Bicep Modules](https://learn.microsoft.com/azure/azure-resource-manager/bicep/modules)
- [Publish Module to a registry](https://learn.microsoft.com/azure/azure-resource-manager/bicep/bicep-cli#publish)

## Lab steps (Mandatory)

Follow the steps below to code a great module for sharing with colleagues.

1. Copy the [keyVault.bicep](https://github.com/UnwontedAB/BicepTraining/blob/main/Introduction%20to%20Bicep/templates/keyVault.bicep) file to your local workspace in VS Code.
2. Make the following changes to your template:
    1. Change the value for property `softDeleteRetentionInDays` to a parameter. Configure the parameter to only allow values between `7 and 30` using decorators
    1. Add the `@description()` decorator to all parameters providing a description for the parameters.
    1. Add outputs to the template for the resource name and id.
3. Create a new file and name it `main.bicep`.
4. Define a module in `main.bicep` by adding and modifying the code below.

```bicep
module keyVault './keyVault.bicep' = {
  name: 'keyvault-deploy-using-module'
  params: {
    <parameter-names-and-values>
  }
}
```

5. Save the `main.bicep` file.
6. Deploy `main.bicep` to Azure using VS Code.
7. Navigate to the Azure Portal and verify that the Key Vault is successfully deployed.
