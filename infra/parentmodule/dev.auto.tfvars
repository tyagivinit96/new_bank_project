rg = {
  rg1 = {
    name     = "devrg"
    location = "eastus"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "devvnet"
    vnet_location = "eastus"
    rg_name       = "devrg"
    address_space = ["10.0.0.0/16"]
    #   dns_servers = 
    # }
  }
}

subnet = {
  subnet1 = {
    subnet_name      = "devsubnet"
    rg_name          = "devrg"
    vnet_name        = "devvnet"
    address_prefixes = ["10.0.1.0/24"]

  }
}
pip = {
  pip1 = {
    pip_name          = "frontend-ip"
    rg_name           = "devrg"
    pip_location      = "eastus"
    allocation_method = "Static"

  }
}

lb = {
  lb1 = {
    pip_name = "frontend-ip"
    rg_name  = "devrg"
    name     = "frontendlb"
    location = "eastus"
  }
}

acr = {
  acr1 = {
    acr_name      = "devacr"
    rg_name       = "devrg"
    acr_location  = "eastus"
    admin_enabled = false
    sku           = "Basic"
    # zone_redundancy_enabled = false
    # geo_location = "eastus"
  }
}

aks = {
  aks1 = {
    aks_name       = "devaks"
    aks_location   = "eastus"
    rg_name        = "devrg"
    dns_prefix     = "niteshaks"
    node_pool_name = "pool1"
    node_count     = 2
    vm_size        = "Standard_D2_v2"
    type_identity  = "SystemAssigned"
  }
}

sqlserver = {
  sqlserver1 = {
    login_username               = "maheshpandey@rajeshprajapati3outlook.onmicrosoft.com"
    object_id                    = "01a429f6-d39c-4c16-83c4-69320cc6e949"
    minimum_tls_version          = "1.2"
    administrator_login_password = "Admin@123456"
    administrator_login          = "admin"
    sqlserver_location           = "eastus"
    rg_name                      = "devrg"
    sql_name                     = "sqlserver251088"
    version = "12.0"
  }
} 

sqldb = {
  sqldb1 = {
    sqldb_name = "sqldb251088"
    sqlserver_name = "sqlserver251088"
    rg_name = "devrg"

  }
}

kv= {
  kv1 = {
    kv_name = "kv251088"
    kv_location = "eastus"
    rg_name = "devrg"
    enabled_for_disk_encryption = true
    soft_delete_retention_days = "7"
    purge_protection_enabled = false
    sku_name = "standard"

  }
}