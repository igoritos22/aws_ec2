### Descrição
Modulo terraform para criação de uma instancia EC2

### Como usar

## Declarar o modulo 

```bash
module "ec2" {
  source = "github.com/igoritos22/aws_ec2"
  vpc_cidr_block = "10.0.0.0/16"
  availability_zone = "us-east-2"
  sg_name = "sg_lab_docker_tf"
  key_name = "mykeyname"
}
```

## Declarar provider
```bash
provider "aws" { region = us-east-2 }
```

- Você também deve incluir um arquivo chamado install_docker.sh na raiz

```bash
#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo docker run hello-world
# Linux post-install
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
```