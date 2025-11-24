variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "vnet" {

  type = map(object({
    vnet_name     = string
    vnet_location = string
    rg_name       = string
    address_space = list(string)
    # dns_servers =string
  }))

}

variable "subnet" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))

}
variable "pip" {
  type = map(object({
    pip_name          = string
    rg_name           = string
    pip_location      = string
    allocation_method = string

  }))

}

variable "lb" {

  type = map(object({
    pip_name = string
    rg_name  = string
    name     = string
    location = string

  }))
}

variable "acr" {
  type = map(object({
    acr_name      = string
    rg_name       = string
    acr_location  = string
    admin_enabled = bool
    # geo_location = string
    sku = string
    #  zone_redundancy_enabled = string

  }))

}

variable "aks" {
  type = map(object({
    aks_name       = string
    aks_location   = string
    rg_name        = string
    dns_prefix     = string
    node_pool_name = string
    node_count     = string
    vm_size        = string
    type_identity  = string
  }))

}

variable "sqlserver" {
  type = map(object({
    sql_name                     = string
    rg_name                      = string
    sqlserver_location           = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    login_username               = string
    object_id                    = string
    version = string

  }))
}

variable "sqldb" {
  type = map(object({
    sqldb_name = string
    sqlserver_name = string
    rg_name = string
  }))
}

variable "kv" {
  type = map(object({
    kv_name = string
    kv_location = string
    rg_name = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days = string
    purge_protection_enabled = bool
    sku_name = string


  }))
}