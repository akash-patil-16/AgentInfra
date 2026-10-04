resource_group = {
  rg1 = {
    name     = "rg-apatil"
    location = "central india"
  }
}

Vnet = {
  vnet1 = {
    name               = "agent-apatil"
    resource_group_key = "rg1"
    address_space      = ["10.0.0.0/24"]
  }
}

subnet = {
  subnet1 = {
    name               = "agent-subnet"
    resource_group_key = "rg1"
    vnet_key           = "vnet1"
    address_prefixes   = ["10.0.1.0/24"]
  }
}

pip-VM = {
  pip1 = {
    pip_name           = "pip-agent"
    resource_group_key = "rg1"
  }
}

nsg_VM = {
  nsg1 = {
    nsg_name           = "nsg-agent"
    resource_group_key = "rg1"
  }
}


nic_VM = {
  nic1 = {
    name               = "nic-agent"
    resource_group_key = "rg1"
    subnet_key         = "subnet1"
    ip_name            = "agent-ip"
    pip_key            = "pip1"
    nsg_key            = "nsg1"
  }
}

linux-VM = {
  linux_vm1 = {
    name               = "apatil-agent-vm"
    resource_group_key = "rg1"
    nic_VM_key         = "nic1"
  }
}
