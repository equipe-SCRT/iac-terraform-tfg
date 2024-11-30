resource "aws_s3_bucket" "scrt_s3_1" {
  bucket = "s3-scrt-1"
}

resource "aws_s3_bucket_versioning" "my_protected_bucket_versioning" {
  bucket = aws_s3_bucket.scrt_s3_1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "my_protected_bucket_access" {
  bucket = aws_s3_bucket.scrt_s3_1.id

  # Block public access
  block_public_acls   = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}