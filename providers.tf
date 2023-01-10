terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.38.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate8661"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "sub1"
  subscription_id = "1d076abb-d20d-4b36-8b57-169c24fddf99"

  features {}
}

provider "azurerm" {
  alias           = "sub2"
  subscription_id = "e636dec9-9670-4ef1-ae65-8b9bbfb73f6d"

  features {}
}
