module "for-rg" {
  source = "../../Modules/RG"
  rgs    = var.rgs
}
module "for-vnet" {
  source     = "../../Modules/vnet"
  vnets      = var.vnets
  depends_on = [module.for-rg]
}
module "for-snet" {
  source     = "../../Modules/snet"
  snets      = var.snets
  depends_on = [module.for-vnet]
}
module "for-pip" {
  source     = "../../Modules/pip"
  pips       = var.pips
  depends_on = [module.for-rg, module.for-vnet, module.for-snet]
}

module "for-vm" {
  source     = "../../Modules/vm"
  vms        = var.vms
  depends_on = [module.for-rg, module.for-vnet, module.for-snet, module.for-pip]
}