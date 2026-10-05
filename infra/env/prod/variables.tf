variable "resource_group" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_account" {
  type = map(object({
    name                     = string
    resource_group_key       = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "Vnet" {
  type = map(object({
    name               = string
    resource_group_key = string
    address_space      = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    name               = string
    resource_group_key = string
    vnet_key           = string
    address_prefixes   = list(string)
  }))
}

variable "pip-VM" {
  type = map(object({
    pip_name           = string
    resource_group_key = string
  }))
}

variable "nic_VM" {
  type = map(object({
    name               = string
    resource_group_key = string
    subnet_key         = string
    ip_name            = string
    pip_key            = string
    nsg_key            = string
  }))
}


variable "nsg_VM" {
  type = map(object({
    nsg_name           = string
    resource_group_key = string
  }))
}

variable "linux-VM" {
  type = map(object({
    name               = string
    resource_group_key = string
    nic_VM_key         = string
  }))
}
