variable "aws_region" {

    type = string
    description = "Region in resources to be created"
    default = "us-east-1"

}

variable "access_key" {

    type = string
    description = "access key of aws account"
    
}

variable "secret_key" {

    type = string
    description = "secret_key of aws account"
    }

variable  "vpc_name" {
    type = string
    description = "Name of the Aws vpc network"
    default = "Akhil-pract"
}

variable "vpc_CIDR" {
    type = string
    description = "CIDR blocks of vpc"
    default = "10.0.0.0.0/22"
}