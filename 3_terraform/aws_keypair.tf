resource "aws_key_pair" "controller-kuberneteslab0001" {
  key_name   = "k8s-server-key-kuberneteslab0001"
  public_key = file ("~/.ssh/k8s-key.pub")
}

resource "aws_key_pair" "north-south-router-kuberneteslab0001" {
  key_name   = "north-south-router-key-kuberneteslab0001"
  public_key = file ("~/.ssh/north-south-router-key.pub")
}