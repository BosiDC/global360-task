module "resource_group" {
  source = "../../modules/resource_group"

  name     = "rg-webapp"
  location = "australiaeast"
}