provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "testing_bucket" {
  bucket = "narmathatesting112345"
}

resource "aws_s3_bucket" "raji_bucket" {
  bucket = "rajitest1213"
}