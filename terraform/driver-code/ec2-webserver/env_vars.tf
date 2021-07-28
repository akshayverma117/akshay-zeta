locals {
  variables ={
    default = {
      ec2 = {
        webserver = {
          name = "webserver"
          count = 1
          type = "t2.micro"
        }
        jenkins = {
          count = 3
          type = "t3.medium"
        }
      }
      s3 = {
        
      }
    }
  }
}

locals {
  environment = "${terraform.workspace}"
}

