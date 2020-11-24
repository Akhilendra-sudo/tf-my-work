
###---------Network Definition------###

resource "aws_vpc" "us-east-network" {
  
    cidr_block = "10.0.0.0/22"
    tags       = {

        Name        = "us-east-network"
        environment = "Testing-01"
        owner       = "Akhilendra"
    }
}

resource "aws_subnet" "Mgmt" {
  vpc_id     = aws_vpc.us-east-network.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Mgmt"
  }
}

resource "aws_subnet" "backend" {
  vpc_id     = aws_vpc.us-east-network.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "backend"
  }
}


#VM Creation
#Linux VM creation
resource "aws_instance" "Linuxweb" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  subnet_id     =  aws_subnet.Mgmt.id
    tags = {
        Name = "Test-LinuxBoxVM"
  }

}

#Windows VM creation
resource "aws_instance" "Windowsweb" {
  ami           = "ami-0e315da6b15c55161"
  instance_type = "t2.micro"
  subnet_id     =  aws_subnet.Mgmt.id
    tags = {
        Name = "Test-WindowsBoxVM"
  }

}

#Ubuntu VM creation
resource "aws_instance" "Ubuntuweb" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  subnet_id     =  aws_subnet.backend.id
    tags = {
        Name = "Test-UbuntuBoxVM"
  }

}

output "Linuxweb_private_ip" {
        value = aws_instance.Linuxweb.private_ip

}

output "Linuxweb_public_ip" {
        value = aws_instance.Linuxweb.public_ip

}

output "Windowsweb_private_ip" {
        value = aws_instance.Windowsweb.private_ip

}

output "Windowsweb_public_ip" {
        value = aws_instance.Windowsweb.public_ip

}

output "Ubuntuweb_private_ip" {
        value = aws_instance.Ubuntuweb.private_ip

}

output "Ubuntuweb_public_ip" {
        value = aws_instance.Ubuntuweb.public_ip

}