terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 4.18.0"

    }

  }



  backend "s3" {

    bucket = "babaobas3-051524"

    key = "state//terraform.tfstate"

    region = "ca-central-1"

    encrypt = true

    dynamodb_table = "Terraform_lock"

  }

}
