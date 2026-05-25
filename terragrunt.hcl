terraform {
    source = "./resource"
}
inputs = {
  ec2_ami       = "ami-00a9f44477dd83e3d"
  ec2_type      = "t3.small"
  ec2_key_name  = "My-New-Key"
  ec2_name      = "MyEC2Instance"
  key_path      = "C:/Users/Gyanesh/My-New-Key.pem"
}
