// uniqueString() template function generates a string of 13 characters based on the provided input.
var name = '${uniqueString(resourceGroup().name,deployment().name)}acr'

resource acr 'Microsoft.ContainerRegistry/registries@2023-11-01-preview' = {
  name: name
  location: 'swedencentral'
  sku: {
    name: 'Basic'
  }
}
