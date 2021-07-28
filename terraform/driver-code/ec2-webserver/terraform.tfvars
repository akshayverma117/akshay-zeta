platform                  = "zeta-test"
aws_region                = "us-east-1"
terraform_version         = ">= 0.13.0"
#vpc_id                    = data.terraform_remote_state.vpc.outputs.vpc_id
ec2_jump_pem_path         = "zeta_key"
#subnet_id                 = data.terraform_remote_state.vpc.outputs.public_subnets[0]
#vpc_cidr                  = data.terraform_remote_state.vpc.outputs.vpc_cidr
