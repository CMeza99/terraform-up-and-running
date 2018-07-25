# Terraform: Up & Running Exercise

Practice code from the book *[Terraform: Up and Running](http://www.terraformupandrunning.com)* by
[Yevgeniy Brikman](http://www.ybrikman.com).

## License

This code is released under the MIT License. See LICENSE.txt.

https://github.com/brikis98/terraform-up-and-running-code is under the MIT License, so this repo is as well.

# Usage

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| server_port | The port the server will use for HTTP requests | string | `8080` | no |

## Outputs

| Name | Description |
|------|-------------|
| elb_dns_name | Load balancer FQDN |

