variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "project_name" {
  description = "The name of the project."
  type        = string
}


variable "tags" {
  type        = map(any)
  description = "A map of tags to add to the resources."
}