resource "aws_s3_bucket" "web_app_bkt" {
  bucket        = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "bkt_versioning" {
  bucket = aws_s3_bucket.web_app_bkt.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "bkt_encrypt" {
  bucket = aws_s3_bucket.web_app_bkt.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
