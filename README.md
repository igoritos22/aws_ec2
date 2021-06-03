### Descrição
Modulo terraform para criação de uma instancia EC2

### Como usar

## Declarar o modulo 

´module "ec2" {
  source = "github.com/igoritos22/aws_ec2"
  vpc_cidr_block = "10.0.0.0/16"
  availability_zone = "us-east-2"
  sg_name = "sg_lab_docker_tf"
  key_name = "mykeyname"
}´

## Declarar provider

´provider "aws" { region = us-east-2 }´

- Você também deve incluir um arquivo chamado install_docker.sh na raiz

