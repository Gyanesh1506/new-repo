resource "aws_instance" "example" {
  ami = var.ec2_ami
  instance_type = var.ec2_type
  key_name = var.ec2_key_name
  tags = {
    Name = var.ec2_name
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.key_path)
    host        = self.public_ip
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y docker
              sudo systemctl start docker
              sudo systemctl enable docker
              EOF
}
