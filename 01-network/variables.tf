variable "project_name" {
  description = "The name of the project."
  type        = string
}


variable "tags" {
  type        = map(any)
  description = "A map of tags to add to the resources."
}