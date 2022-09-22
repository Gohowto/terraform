data "terraform_remote_state" "s3" {
  backend = "s3"

  config = {
    key    = "s3"
    bucket = var.aws_bucket
    region = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key 
  }
}