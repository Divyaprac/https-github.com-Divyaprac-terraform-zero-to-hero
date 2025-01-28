lsprovider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami_value 
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id_value
}

