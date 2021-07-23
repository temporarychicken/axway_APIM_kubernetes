resource "aws_instance" "kubernetes0001-worker-node-2" {
  ami                         = data.aws_ami.k8s-base-machine.id # eu-west-2
  instance_type               = "t2.large"
  key_name                    = "k8s-server-key-kubernetes0001"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.nginx-web-facing.id]
  subnet_id                   = aws_subnet.main.id
  private_ip                  = "10.0.0.50"



  tags = {
    Name = "kubernetes0001-worker-node-2"
  }
}
