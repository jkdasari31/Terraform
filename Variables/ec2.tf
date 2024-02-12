resource "aws_instance" "Instance01" {
  ami           = var.ami_id #devops-practice
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.roboshop-allowall.id] # this means list
  tags = var.tags
}

