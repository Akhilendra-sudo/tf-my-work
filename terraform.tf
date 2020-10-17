provide "aws" {

    region = var.aws_region
    access_key = var.access_key
    seceret_key = var.seceret_key

}

resource "aws_vpc" var.vpc_name {

        cidr_block = var.vpc_cidr
        tags = {

            name = var.vpc_name
            Environment = "test-1"
            owner = "Akhiledra"

        }
}