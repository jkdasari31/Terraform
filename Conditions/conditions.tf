resource "aws_instance" "web" {
  ami           =  var.ami_id  #devops-practice
  subnet_id = "subnet-0feda0d67eec4efb0"
  instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"
  tags = {
    Name = "Terraform Server"
  }
}