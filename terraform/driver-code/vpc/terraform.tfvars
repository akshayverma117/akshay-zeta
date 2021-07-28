create_vpc       = true
project_name     = "akshay-zeta"
env_name         = "default"
vpc_cidr         = "10.1.0.0/16"
azs              = ["us-east-1a", "us-east-1b"]
private_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
public_subnets   = ["10.1.3.0/24", "10.1.4.0/24"]
aws_region="us-east-1"
