provider "aws" {
    region      = "eu-north-1"
     access_key = ""
     secret_key = ""
    
}

resource "aws_instance" "test_jenkins_terraform" {

    count                  = 1
    ami                    = "ami-0ed17ff3d78e74700"
    instance_type          = "t3.micro"
    vpc_security_group_ids = ["sg-0446a23868282b71f"]
    key_name               = "ubuntu"
    tags = {
        Name    = "Test Jenkins_terrafrom"
        Owner   = "Nazar"
        Project = "Jenkins_Terrafrorm"
    }
}
