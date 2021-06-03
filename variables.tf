variable vpc_cidr_block {
  type        = string
  description = "cidr block da VPC"
  #"10.0.0.0/16"
}

variable availability_zone {
    type = string
    description = "Zona de disponibilidade dos recursos"
    #"us-east-2"
}

variable cidr_blocks {
    type = list
    description = "Endereco de ip permitido no security group"
    default = ["191.183.199.24/32", "189.33.64.205/32"]
}

variable sg_name {
    type = string
    description = "nome do grupo de recusos"
}

variable ami {
    type = string
    description = "ID da AMI da nstancia ec2"
    default = "ami-00399ec92321828f5" #ubuntu 20.04
}

variable instance_type {
    type = string
    description = "Size da ec2"
    default = "t3.medium"
}

variable key_name {
    type = string
    description = "Nome da keypair para acessar as ec2"
}



