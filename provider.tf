# AWS基本設定
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "ap-northeast-1"
}

resource "aws_s3_bucket" "aws-cp-s3" {
  bucket = "aws-cp-s3"
  acl = "private"
}

resource "aws_s3_bucket_object" "dev" {
  bucket       = aws_s3_bucket.aws-cp-s3.id
  source       = "${path.module}/resources/1F93F649-FF73-4825-AF38-A30533CFC714_1_105_c.jpeg"
  // acl          = "public-read" // ダウンロード可能
  acl = "private" // アクセス不可
  key = "1F93F649-FF73-4825-AF38-A30533CFC714_1_105_c.jpeg"
}