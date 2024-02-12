# 1. command line
# 2. -var-file  -- the filename with extension .tfvars eg: roboshop.tfvars (custom terraform.tfvars file)
## command to use: 
##   terraform plan -var-file="roboshop.tfvars"
#### terraform plan -var-file="roboshop.tfvars" -var="instance_type=t3.large"
# 3. terraform.tfvars  -- Values in terraform.tfvars is used to override the default values from variables.tf file
# 4. ENV variables
variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "subnet_id" {
    default = "subnet-0feda0d67eec4efb0"
}

variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }
}

variable "sg-name" {
  type = string
  default = "Roboshop-AllowAll"
}

variable "sg-description" {
  type = string
  default = "allowing all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}