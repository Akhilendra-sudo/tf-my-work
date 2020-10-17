###------Provider Definition--------###

Provider "aws" {

Region = "us-east-1"
access_key = ""
secret_key = ""
}
###---------------------------------###

###---------Network Definition------###

resource "aws_vpc" "Akhil-Pract" {

    cidr_block = "10.0.0.0.0/22"
    tags = {

        name = "Akhil-Pract"
        environment = "Testing-01"
        owner       = "Akhilendra"
    }


}
