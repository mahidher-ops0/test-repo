provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  
  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "main_bucket" {
  bucket = var.main_bucket_name
  
  tags = {
    Name        = var.main_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "logs_bucket" {
  bucket = var.logs_bucket_name
  
  tags = {
    Name        = var.logs_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "backup_bucket" {
  bucket = var.backup_bucket_name
  
  tags = {
    Name        = var.backup_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "data_bucket" {
  bucket = var.data_bucket_name
  
  tags = {
    Name        = var.data_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "archive_bucket" {
  bucket = var.archive_bucket_name
  
  tags = {
    Name        = var.archive_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "assets_bucket" {
  bucket = var.assets_bucket_name
  
  tags = {
    Name        = var.assets_bucket_name
    Environment = var.environment
  }
}