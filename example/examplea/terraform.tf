terraform {
  required_providers {
    aws = {
      version = "4.6.0"
      source  = "hashicorp/aws"
    }
    local = {
      version = "2.0.0"
      source  = "hashicorp/local"
    }
  }
  required_version = ">=0.14.8"
}
