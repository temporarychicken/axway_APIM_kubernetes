resource "aws_instance" "kuberneteslab0001-k8s-master" {
  ami                         = data.aws_ami.k8s-base-machine.id # eu-west-2
  instance_type               = "t2.medium"
  key_name                    = "k8s-server-key-kuberneteslab0001"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.nginx-web-facing.id]
  subnet_id                   = aws_subnet.main.id
  private_ip                  = "10.0.0.30"

 
  provisioner "remote-exec" {
  
    connection {
    type     = "ssh"
    user     = "centos"
	private_key = file("~/.ssh/k8s-key.pem")
    host     = self.public_ip
  }
  
        inline = [
  	    "./install-kubernetes-master.sh",
		"./install_nfs_server.sh",
		"./install_nginx_ingress_controller.sh",
		"sudo yum install nginx -y",
		"sudo systemctl enable nginx",
		"sudo cp nginx.conf /etc/nginx/",
		"sudo systemctl restart nginx",
		"#./install_helm_and_APIM.sh",
		"kubectl patch storageclass my-nfs -p '{\"metadata\": {\"annotations\":{\"storageclass.kubernetes.io/is-default-class\":\"true\"}}}'"
    ]
  }

  tags = {
    Name = "kuberneteslab0001-k8s-master"
  }
}


resource "null_resource" "displayk8stoken" {
  triggers = {
    first_trigger  = null_resource.buildimages.id
  }



  provisioner "remote-exec" {
  
    connection {
    type     = "ssh"
    user     = "centos"
	private_key = file("../2_packer/keys/k8s-key.pem")
    host     = aws_instance.kuberneteslab0001-k8s-master.public_ip
  }
  
        inline = [
		"echo 'Here is your access token for logging into the Kubernetes Dashboard at https://k8s-master.kuberneteslab0001.axwaydemo.net:32443'",
		"kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')"

    ]
  }
  



  provisioner "local-exec" {
  
        command = "echo 'To log into your k8s-master node via ssh and access the kubectl command, together with scripts to install APIM and ISTIO, use:';echo 'ssh-keygen -R k8s-master.kuberneteslab0001.axwaydemo.net';echo 'ssh -i ~/.ssh/k8s-key.pem centos@k8s-master.kuberneteslab0001.axwaydemo.net'"
  
  }		
  
  
}


