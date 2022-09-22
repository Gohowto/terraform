locals {
  cloudfront = [
    {
      environment : "prod",
      comment : "gohowto distribution"
      origin_id : "S3OriginId"
      domain_name : data.terraform_remote_state.s3.outputs.aws_bucket_regional_domain_name[0]
    }
  ]
}

module "cloudfront" {
  count  = length(local.cloudfront)
  source = "../../../modules/cloudfront"

  environment = local.cloudfront[count.index].environment
  comment     = local.cloudfront[count.index].comment
  origin_id   = local.cloudfront[count.index].origin_id
  domain_name = local.cloudfront[count.index].domain_name
}
