terraform {

  cloud {
    organization = "tpak"

    workspaces {
      name = "tpak-org"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "github" {
  token        = var.tpak_org_personal_dev_key
  organization = "tpak-org"
}
