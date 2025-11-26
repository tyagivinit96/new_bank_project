rg = {
  rg1 = {
    name     = "vin_rg"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "devvnet"
    vnet_location = "centralindia"
    rg_name       = "vin_rg"
    address_space = ["10.0.0.0/16"]
    #   dns_servers = 
    # }
  }
}

subnet = {
  subnet1 = {
    subnet_name      = "devsubnet"
    rg_name          = "vin_rg"
    vnet_name        = "devvnet"
    address_prefixes = ["10.0.1.0/24"]

  }
}
pip = {
  pip1 = {
    pip_name          = "frontend-ip"
    rg_name           = "vin_rg"
    pip_location      = "centralindia"
    allocation_method = "Static"

  }
}

lb = {
  lb1 = {
    pip_name = "frontend-ip"
    rg_name  = "vin_rg"
    name     = "frontendlb"
    location = "centralindia"
  }
}

acr = {
  acr1 = {
    acr_name      = "devacr"
    rg_name       = "vin_rg"
    acr_location  = "centralindia"
    admin_enabled = false
    sku           = "Basic"
    # zone_redundancy_enabled = false
    # geo_location = "centralindia"
  }
}

aks = {
  aks1 = {
    aks_name       = "devaks"
    aks_location   = "centralindia"
    rg_name        = "vin_rg"
    dns_prefix     = "niteshaks"
    node_pool_name = "pool1"
    node_count     = 2
    vm_size        = "Standard_D2_v2"
    type_identity  = "SystemAssigned"
  }
}

sqlserver = {
  sqlserver1 = {
    login_username               = "Vinit.Kumar.Tyagi@sandeep06041991gmail.onmicrosoft.com"
    object_id                    = "22135fc2-ce1f-463b-9d7e-0de70cc656ec"
    minimum_tls_version          = "1.2"
    administrator_login_password = "Admin@123456"
    administrator_login          = "admin"
    sqlserver_location           = "centralindia"
    rg_name                      = "vin_rg"
    sql_name                     = "sqlserver251088"
    version = "12.0"
  }
} 

sqldb = {
  sqldb1 = {
    sqldb_name = "sqldb251088"
    sqlserver_name = "sqlserver251088"
    rg_name = "vin_rg"

  }
}

kv= {
  kv1 = {
    kv_name = "kv251088"
    kv_location = "centralindia"
    rg_name = "vin_rg"
    enabled_for_disk_encryption = true
    soft_delete_retention_days = "7"
    purge_protection_enabled = false
    sku_name = "standard"

  }
}