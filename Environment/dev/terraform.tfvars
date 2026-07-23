rgs = {
  rg1 = {
    name     = "prodrg"
    location = "central india"
  }
}

vnets = {
  vn1 = {
    name     = "prodvnet1"
    rg       = "prodrg"
    location = "central india"
    ads      = ["10.0.0.0/16"]
  }
  vn2 = {
    name     = "prodvnet2"
    rg       = "prodrg"
    location = "central india"
    ads      = ["10.1.0.0/16"]
  }
}

snets = {
  snet1 = {
    name = "frontendsnet"
    rg   = "prodrg"
    vn   = "prodvnet1"
    adp  = ["10.0.1.0/24"]
  }
  snet2 = {
    name = "backendsnet"
    rg   = "prodrg"
    vn   = "prodvnet1"
    adp  = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    name              = "frontendip"
    rg                = "prodrg"
    location          = "central india"
    allocation_method = "Static"
  }
  pip2 = {
    name              = "backendip"
    rg                = "prodrg"
    location          = "central india"
    allocation_method = "Static"
  }
}

vms = {
  vm1 = {
    nic_name           = "nic1"
    location           = "central india"
    rg_name            = "prodrg"
    nic_ip_name        = "nicpip1"
    subnet_name        = "frontendsnet"
    pip_name           = "frontendip"
    vn_name            = "prodvnet1"
    vm_name            = "frontendvm"
    vm_size            = "Standard_D2s_v3"
    admin_username     = "azureuser"
    password           = "Aspire@12345"
    private_allocation = "Dynamic"

  }
  vm2 = {
    nic_name           = "nic2"
    location           = "central india"
    rg_name            = "prodrg"
    nic_ip_name        = "nicpip2"
    subnet_name        = "backendsnet"
    pip_name           = "backendip"
    vn_name            = "prodvnet1"
    vm_name            = "backendvm"
    vm_size            = "Standard_D2s_v3"
    admin_username     = "azureuser"
    password           = "Aspire@12345"
    private_allocation = "Dynamic"

  }
}