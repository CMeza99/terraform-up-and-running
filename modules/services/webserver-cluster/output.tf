output "elb_dns_name" {
  description = "Load balancer FQDN"
  value = "${aws_elb.example.dns_name}"
}

output "asg_name" {
  description = "Auto Scaling Group Name"
  value = "${aws_autoscaling_group.example.name}"
}

output "elb_security_group_id" {
  description = "Auto Scaling ELB ID"
  value = "${aws_security_group.elb.id}"
}
