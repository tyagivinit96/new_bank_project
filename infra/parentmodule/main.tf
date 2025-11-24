module "rg" {
  source = "../childmodule/rg"
  rg     = var.rg
}

module "vnet" {
  depends_on = [ module.rg ]
  source = "../childmodule/Vnet"
  vnet   = var.vnet
}

module "subnet" {
  depends_on = [ module.rg , module.vnet ]
  source = "../childmodule/Subnet"
  subnet = var.subnet

}

module "pip" {
  depends_on = [ module.rg ]
  source = "../childmodule/Public ip"
  pip    = var.pip

}

module "loadbalancer" {
  depends_on = [module.pip , module.rg]
  source     = "../childmodule/loadbalancer"
  lb         = var.lb
}

module "ACR" {
  depends_on = [ module.rg ]
  source = "../childmodule/ACR"
  acr    = var.acr

}

module "aks" {
  depends_on = [ module.rg ]

  source = "../childmodule/AKS"
  aks    = var.aks
}

module "sqlserver" {
  depends_on = [ module.rg ]
  source    = "../childmodule/sql server"
  sqlserver = var.sqlserver

}

module "sqldatabase" {
  depends_on = [ module.sqlserver , module.rg]

  source= "../childmodule/sqldatabase"
  sqldb = var.sqldb


}

module "kv" {
  depends_on = [ module.rg ]
  source = "../childmodule/keyvault"
  kv = var.kv
}
# Y2d6WXJ3VWZEUWxza0FmQg==

# [System.Text.Encoding]::UTF8.GetString(
#     [System.Convert]::FromBase64String("Y2d6WXJ3VWZEUWxza0FmQg==")
# )

# pwd = cgzYrwUfDQlskAfB