output "elb_dns_name" {
  description = "Load balancer FQDN"
  value = "${aws_elb.example.dns_name}"
}

