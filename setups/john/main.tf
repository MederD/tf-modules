provider "aws" {
    version = "~> 3.1"
    region = "us-west-2"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
}

module "webserver_module" {
    source          = "../../modules/webserver"
    vpc_id          = aws_vpc.main.id
    cidr_block      = "10.0.0.0/16"
    webserver_name  = "John"
    ami             = "ami-003634241a8fcdec0" #Ubuntu (us-west-2)
    instance_type   = "t2.micro" # if we leave this blank, default one will be assigned
}

# resource "aws_elb" "main" {
#     instances   = module.webserver_module.instance.id
# }

/*Output of output*/
# output "instance_data" {
#     value   = module.webserver_module.instance
# }