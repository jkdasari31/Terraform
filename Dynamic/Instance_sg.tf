resource "aws_instance" "public" {
  ami           = var.ami_id 
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "Dynamic Concept"
  }
}

resource "aws_security_group" "roboshop-all" { 
    name        = "dynamic-demo"
    description = "dynamic-demo-SG"

    dynamic ingress {
        for_each = var.ingress_rules
        content {
          description      = ingress.value["description"]
          from_port        = ingress.value["from_port"]
          to_port          = ingress.value["to_port"]
          protocol         = ingress.value["protocol"]
          cidr_blocks      = ingress.value["cidr_blocks"]
        }     
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "dynamic-SG"
    }
}