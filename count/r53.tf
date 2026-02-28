resource "aws_route53_record" "www" {
  count = 10
 # interpolation
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.pvraolearns.onlin
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}