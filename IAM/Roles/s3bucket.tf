#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup_s3bucket" {
  bucket = "levelup-bucket-444"
  acl    = "private"

  tags = {
    Name = "levelup-bucket-444"
  }
}

