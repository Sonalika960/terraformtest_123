provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "web01"{
    ami = "ami-0cf8ec67f4b13b491"
    instance_type = "t2.micro"

    tags= {
        Name="demo1"
    }
}

output "publicIP"{
    value = aws_instance.web01.public_ip

}

