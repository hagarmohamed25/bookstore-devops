variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name for the EKS cluster."
  default     = "bookstore-cluster"
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS worker nodes."
  default     = "t3.small" # As requested
}