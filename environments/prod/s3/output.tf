output "aws_s3_bucket_id" {
  value = module.s3[*].aws_s3_bucket_id
}

output "aws_s3_bucket" {
  value = module.s3[*].aws_s3_bucket
}

output "aws_s3_bucket_acl_id" {
  value = module.s3[*].aws_s3_bucket_acl_id
}

output "aws_bucket_regional_domain_name" {
  value = module.s3[*].aws_bucket_regional_domain_name
}