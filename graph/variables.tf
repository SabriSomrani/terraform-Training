variable "ingress_ports" {
  type    = list(any)
  default = [80, 22, 21, 443]
}

