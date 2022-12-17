resource "azurerm_private_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
