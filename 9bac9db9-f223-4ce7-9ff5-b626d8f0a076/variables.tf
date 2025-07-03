variable "region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "neetesh-04-s3"
}

variable "environment" {
  description = "The environment (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}