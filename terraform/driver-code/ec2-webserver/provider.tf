terraform {
  backend "s3" {
    bucket               = "akshay-zeta-assignment"
    key                  = "terraform/webserver/terraform.tfstate"
    region               = "us-east-1"
    encrypt              = true
  }
}

provider "aws" {
  region                 = var.aws_region
}
  
