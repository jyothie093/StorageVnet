provider "azurerm" {
  features {}

}

terraform {
  backend "azurerm" {
    storage_account_name = "stacpipterr"
    container_name       = "container1"
    key                  = "terraform.tfstate"
    access_key           = "ZBkiSqt8TFr8n2S5OjxdVofwCLVu+LUlOw42npoZYM44JCQRIyuFRj36gYcaECSARbj8iF1ga2JKWwkPbEsuqg=="
  }
}
