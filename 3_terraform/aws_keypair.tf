resource "aws_key_pair" "controller-kubernetes0001" {
  key_name   = "k8s-server-key-kubernetes0001"
  public_key = file ("~/.ssh/k8s-key.pub")
}

resource "aws_key_pair" "north-south-router-kubernetes0001" {
  key_name   = "north-south-router-key-kubernetes0001"
  public_key = file ("~/.ssh/north-south-router-key.pub")
}