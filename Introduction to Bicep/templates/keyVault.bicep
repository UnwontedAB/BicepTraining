
param name string
param location string

@allowed([
  'standard'
  'premium'
])
param sku string

resource vaults 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: name
  location: location
  properties: {
    sku: {
      family: 'A'
      name: sku
    }
    tenantId: tenant().tenantId
    enableRbacAuthorization: true
    enabledForDeployment: true
    enabledForTemplateDeployment: true
    enabledForDiskEncryption: false
    enableSoftDelete: true
    softDeleteRetentionInDays: 7
    enablePurgeProtection: true
  }
}
