locals {
  d = [
    {
      environment : "prod",
      name : "gohowto.dev"
    }
  ]
}

module "route53" {
  count  = length(local.d)
  source = "../../../modules/route53"

  environment = local.d[count.index].environment
  name        = local.d[count.index].name
}
