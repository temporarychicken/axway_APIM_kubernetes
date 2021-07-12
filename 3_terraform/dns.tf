# Set some defaults for AWS like region.
#provider "aws" {
# profile = "default"
# region  = "eu-west-2"
#}



resource "aws_route53_record" "apimanager-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "apimanager.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "apigateway-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "apigateway.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "api-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "api.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}




resource "aws_route53_record" "dockerregistry-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "dockerregistry.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-docker-registry.public_ip ]

}

resource "aws_route53_record" "kubernetes-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "kubernetes.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
#  records = [ aws_instance.kuberneteslab0001-nginx-plus-gateway-1.public_ip ]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "k8s-master-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "k8s-master.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "worker-node-1-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-1.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-worker-node-1.public_ip ]

}


resource "aws_route53_record" "worker-node-2-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-2.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-worker-node-2.public_ip ]

}

resource "aws_route53_record" "k8sdashboard-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "k8sdashboard.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "ingressdashboard-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "ingressdashboard.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "cafe-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "cafe.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
#  records = [ aws_instance.kuberneteslab0001-nginx-plus-gateway-1.public_ip ]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}

resource "aws_route53_record" "cafe2-kuberneteslab0001" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "cafe2.kuberneteslab0001.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
#  records = [ aws_instance.kuberneteslab0001-nginx-plus-gateway-1.public_ip ]
  records = [ aws_instance.kuberneteslab0001-k8s-master.public_ip ]

}