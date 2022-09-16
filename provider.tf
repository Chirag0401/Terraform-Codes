terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
}

# Credentials are exported into the environment