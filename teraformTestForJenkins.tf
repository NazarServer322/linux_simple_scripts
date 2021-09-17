provider "aws" {
    region      = "eu-north-1"
     access_key = ""
     secret_key = ""
    
}

resource "aws_instance" "Jenkins_for_Terraform" {
  count                  = 1
  ami                    = "ami-0ed17ff3d78e74700"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0446a23868282b71f"]
  key_name               = "devops_course_work"
  
  tags = {
    Name    = "Created using terraform"
    Owner   = "Nazar"
    Project = "Test_how_to_start_terraform_by_Jenkins"
  }
}
