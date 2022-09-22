locals {
  s3 = [
    {
      environment : "prod",
      bucket : "gohowto-prod",
      name : "gowoto"
      acl : "private"
    }
  ]
}

module "s3" {
  count  = length(local.s3)
  source = "../../../modules/s3"

  name        = local.s3[count.index].name
  environment = local.s3[count.index].environment
  bucket      = local.s3[count.index].bucket
  acl         = local.s3[count.index].acl
}
