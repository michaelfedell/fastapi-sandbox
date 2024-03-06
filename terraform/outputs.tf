output "bucket_name" {
  value = aws_s3_bucket.sandbox.bucket
}

output "demo_bucket" {
  value = aws_s3_bucket.spacelift.bucket
}
