terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Example resource - S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = "Example Bucket"
    Environment = var.environment
  }
}

# Variables
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "example-terraform-bucket"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}