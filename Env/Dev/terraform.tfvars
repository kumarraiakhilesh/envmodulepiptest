resource_groups = {
  rg1 = {
    name     = "akhilesh_RG"
    location = "japan east"
  }
}
storage_accounts = {
  St1 = {
    name                = "akhileshstorage1"
    location            = "japan east"
    account_tier        = "Standard"
    replication_type    = "LRS"
    resource_group_name = "akhilesh_RG"
  }
}
storage_containers = {
  st1 = {
    name                  = "akhileshcontainer1"
    container_access_type = "private"
  }
}
virtual_networks = {
  Vnet1 = {
    name                = "akhilesh_vnet"
    location            = "japan east"
    resource_group_name = "akhilesh_RG"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "akhilesh_backend_subnet"
    resource_group_name  = "akhilesh_RG"
    virtual_network_name = "akhilesh_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "akhilesh_frontend_subnet"
    resource_group_name  = "akhilesh_RG"
    virtual_network_name = "akhilesh_vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "akhilesh_RG"
    virtual_network_name = "akhilesh_vnet"
    address_prefixes     = ["10.0.3.0/26"]
  }
}
public_ip = {
  public_ip1 = {
    name                = "acceptanceTestPublicIp1"
    resource_group_name = "akhilesh_RG"
    location            = "japan east"
    allocation_method   = "Static"
  }
}
nic = {
  nic1 = {
    name                = "akhilesh_nic"
    resource_group_name = "akhilesh_RG"
    location            = "japan east"
  }
}
virtual_machine = {
  vm1 = {
    name                = "akhilesh_vm"
    location            = "japan east"
    resource_group_name = "akhilesh_RG"
    vm_size             = "Standard_D2s_v3"
  }
}
nsg={
  nsg1={
    name="akhilesh-nsg"
    location="japan east"
    resource_group_name="akhilesh_RG"
  }
}
bastion = {
  bastion1 = {
    name                = "akhilesh-bastion"
    location            = "japan east"
    resource_group_name = "akhilesh_RG"
    public_ip_name      = "bastion-pip"
  }
}