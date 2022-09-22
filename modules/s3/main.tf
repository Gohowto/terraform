resource "aws_s3_bucket" "b" {
  bucket = var.bucket

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = var.acl
}
