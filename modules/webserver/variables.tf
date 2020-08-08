variable "vpc_id" {
    type        = string
    description = "VPC ID"
}

variable "cidr_block" {
    type        = string
    description = "Subnet CIDR block"
}

variable "webserver_name" {
    type        = string
    description = "Name of the webserver"
}

variable "ami" {
    type        = string
    description = "AMI to use for webserver instances"
}

variable "instance_type" {
    type        = string
    description = "Instance type"
    default     = "t2.micro"
}