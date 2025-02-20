resource "aws_s3_bucket" "revolution" {
  bucket = "revolution-bucket-s3"
}

resource "aws_s3_bucket_versioning" "revolution" {
  bucket = aws_s3_bucket.revolution.id
  versioning_configuration {
    status = "Enabled"
  }
}