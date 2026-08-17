module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr

  availability_zones = [
    "eu-west-2a",
    "eu-west-2b"
  ]

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_app_subnet_cidrs = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]

  private_db_subnet_cidrs = [
    "10.0.21.0/24",
    "10.0.22.0/24"
  ]

  common_tags = local.common_tags
}

module "security" {
  source = "./modules/security"

  project_name         = var.project_name
  environment          = var.environment
  vpc_id               = module.networking.vpc_id
  common_tags          = local.common_tags
  bastion_allowed_cidr = var.bastion_allowed_cidr
}

module "compute" {
  source = "./modules/compute"

  project_name = var.project_name
  environment  = var.environment

  common_tags = local.common_tags

  public_subnet_id   = module.networking.public_subnet_ids[0]
  private_subnet_ids = module.networking.private_app_subnet_ids

  bastion_sg_id = module.security.bastion_sg_id
  app_sg_id     = module.security.app_sg_id
}

module "load_balancer" {
  source = "./modules/load-balancer"

  project_name = var.project_name
  environment  = var.environment

  common_tags = local.common_tags

  vpc_id            = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids

  alb_sg_id = module.security.alb_sg_id
}

module "autoscaling" {
  source = "./modules/autoscaling"

  private_subnet_ids = module.networking.private_app_subnet_ids

  launch_template_id = module.compute.launch_template_id

  target_group_arn = module.load_balancer.target_group_arn
}

