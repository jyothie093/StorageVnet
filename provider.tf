provider "azurerm" {
  features {}
  subscription_id = "8cd0064b-e1ef-4efb-8f73-f6d61e17a953"
  client_id       = "13380c5f-6eb2-416b-859c-41afaa17209c"
  client_secret   = "__WjYWOJxH.M1TqPS2am81tp7.~mbL8y-T"
  tenant_id       = "2dd5a12a-1432-4f77-b35b-946f47598573"
}

terraform {
  backend "azurerm" {
    storage_account_name = "stacpipterr"
    container_name       = "container1"
    key                  = "terraform.tfstate"
    access_key           = "ZBkiSqt8TFr8n2S5OjxdVofwCLVu+LUlOw42npoZYM44JCQRIyuFRj36gYcaECSARbj8iF1ga2JKWwkPbEsuqg=="
  }
}