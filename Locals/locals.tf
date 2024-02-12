# Locals is just like variable, but it have some extra capablities. 
# You can keep functions and expressions inside locals and use them.


locals {
  name = "DevOps Training"
  training = "terraform"
  instance_type = var.isProd ? "t3.small" : "t2.micro"
}