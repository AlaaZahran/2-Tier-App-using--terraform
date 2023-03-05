module "mymodule" {
  source                   = "github.com/AlaaZahran/2-Tier-App-module.git"
  instance_type            = var.instance_type
  ec2-tag                  = var.ec2-tag
  ec2-sg-name              = var.ec2-sg-name
  ec2-sg-description       = var.ec2-sg-description
  ec2-sg-tag               = var.ec2-sg-tag
  ec2-ami                  = var.ec2-ami
  rds-sg-name              = var.rds-sg-name
  identifier               = var.identifier
  db_name                  = var.db_name
  db-tag                   = var.db-tag
  subnet-group-name        = var.subnet-group-name
  instance_class           = var.instance_class
  subnet-group-description = var.subnet-group-description
  allocated_storage        = var.allocated_storage
  storage_type             = var.storage_type
  engine                   = var.engine
  engine_version           = var.engine_version
  cider-routing-table      = var.cider-routing-table
  internet-gateway         = var.internet-gateway
  public-subnet-tag        = var.public-subnet-tag
  vpc-id                   = var.vpc-id
  private-subnet-tag       = var.private-subnet-tag
  Routing-table-tag        = var.Routing-table-tag
  public-az                = var.public-az
  cidr_block               = var.cidr_block
db-user-name  = var.db-user-name
db-password = var.db-password

}

