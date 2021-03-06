module "network" {
  source           = "./iac-04-module/network"
  project          = var.project
  vpcCIDR          = "192.168.0.0/16"
  subnet_public_1  = "Public-subnet-01"
  subnet_public_2  = "Public-subnet-02"
  subnet_private_1 = "Private-subnet-01"
  subnet_private_2 = "Private-subnet-02"
}


module "security" {
  project = var.project
  source  = "./iac-04-module/security"
  vpc_id  = module.network.vpc_id
}


module "app_load_balancer" {
  project                               = var.project
  source                                = "./iac-04-module/alb"
  app_load_balancer_security_group_id   = module.security.app_load_balancer_security_group_id
  app_load_balancer_security_group_name = module.security.app_load_balancer_security_group_name
  subnets_public_1_id                   = module.network.subnets_public_1_id
  subnets_public_2_id                   = module.network.subnets_public_2_id
  subnets_private_1_id                  = module.network.subnets_private_1_id
  subnets_private_2_id                  = module.network.subnets_private_2_id
  vpc_id                                = module.network.vpc_id
  image_id                              = data.aws_ami.amazon.image_id
  min_size                              = var.min_size
  max_size                              = var.max_size
  add_threshold                         = var.add_threshold
  remove_threshold                      = var.remove_threshold
}
