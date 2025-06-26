variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (HVM), SSD Volume Type
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "example-instance"
}

variable "main_bucket_name" {
  description = "Name of the main S3 bucket"
  type        = string
  default     = "example-main-bucket"
}

variable "logs_bucket_name" {
  description = "Name of the logs S3 bucket"
  type        = string
  default     = "example-logs-bucket"
}

variable "backup_bucket_name" {
  description = "Name of the backup S3 bucket"
  type        = string
  default     = "example-backup-bucket"
}

variable "data_bucket_name" {
  description = "Name of the data S3 bucket"
  type        = string
  default     = "example-data-bucket"
}

variable "archive_bucket_name" {
  description = "Name of the archive S3 bucket"
  type        = string
  default     = "example-archive-bucket"
}

variable "assets_bucket_name" {
  description = "Name of the assets S3 bucket"
  type        = string
  default     = "example-assets-bucket"
}

variable "environment" {
  description = "Environment name for resource tagging"
  type        = string
  default     = "development"
}