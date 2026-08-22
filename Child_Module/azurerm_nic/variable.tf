variable "nic_deepak" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    ip_configuration = object({
      name                          = string
      subnet_id                     = optional(string)
      private_ip_address_allocation = string
      public_ip_address_id          = optional(string)
    })
  }))
}
variable "subnet_id" {
  description = "Subnet ID for NIC"
  type        = string
}