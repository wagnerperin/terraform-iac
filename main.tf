terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws",
            version = "~> 4.16"
        }      
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-0080974613cf1e8c7"
    instance_type = "t2.micro"
    key_name = "home-wagnerperin"

    tags = {
        Name = "Primeira Instancia"
    }
}