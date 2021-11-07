resource "azurerm_resource_group" "AzureResourceGroup" {
  name     = "CompanyToneCustomers-${var.CustomerName}"
  location = var.AzureResourceGroupLocation
  tags = {
    CostCenter = "${var.CustomerName}"
  }
}

