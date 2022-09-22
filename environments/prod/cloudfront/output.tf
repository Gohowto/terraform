output "aws_cloudfront_distribution_id" {
  value = module.cloudfront[*].aws_cloudfront_distribution_id
}
