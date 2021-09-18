resource "aws_instance" "sandbox" {
  ami = "ami-0ca38c7440de1749a"
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_id
}

provider "aws" {
  region = "ap-northeast-1"
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "msksgm-container-era-tfstate"
    key    = "test/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

terraform {
  backend "s3" {
    bucket = "msksgm-container-era-tfstate"
    key    = "test/ec2/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

