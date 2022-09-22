output "aws_s3_bucket_id" {
    value = aws_s3_bucket.b.id
}

output "aws_s3_bucket" {
    value = aws_s3_bucket.b.bucket
}

output "aws_s3_bucket_acl_id" {
    value = aws_s3_bucket_acl.example.id
}
