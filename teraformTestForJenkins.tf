provider "aws" {
    region      = "eu-north-1"
     access_key = ""
     secret_key = ""
    
}
resource "aws_security_group" "web_server" {
  
  name_prefix = "web"
  dynamic "ingress" {
    for_each = ["80", "433", "8080", "22"]
    content {
      from_port = ingress.value
      protocol = "tcp"
      to_port = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "Jenkins_for_Terraform" {
  count                  = 1
  ami                    = "ami-0ed17ff3d78e74700"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_server.id]

  
  tags = {
    Name    = "Created using terraform"
    Owner   = "Nazar"
    Project = "Test_how_to_start_terraform_by_Jenkins"
  }
}
