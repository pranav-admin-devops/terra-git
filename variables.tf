# variable "rg_name" {}
# variable "rg_location" {}

# variable "ssh-port" {
#   type = number
#   default = 22
# }

# variable "web-port" {
#   type    = number
#   default = 80
# }

# variable "size" {}

# variable "is_prod" {
#   type = bool
#   default = true
# }

variable "subscription_id" {}
variable "client_id" {}
variable "tenant_id" {}
variable "client_secret" {}

variable "rg" {
  type = map(string)
  default = {
    "pranav-prod"    = "centralindia"
    "pranav-dev"     = "centralindia"
    "pranav-test"    = "centralindia"
    "pranav-stage"   = "centralindia"
    "pranav-default" = "centralindia"
  }

}

variable "sg-rule" {
  type = list(object({
    name     = string
    priority = number
    port     = number
  }))
  default = [{
    name     = "allow-ssh"
    priority = 100
    port     = 22
    },
    {
      name     = "allow-http"
      priority = 101
      port     = 80
    },
    {
      name     = "allow-https"
      priority = 102
      port     = 443
    },
    {
      name     = "allow-rdp"
      priority = 103
      port     = 3389
    }
  ]
}