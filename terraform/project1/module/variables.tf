variable "env" {
  type        = string
  description = "Environment e.g. De (Development)"
}

variable "location" {
  type        = string
  description = "Azure region where the resources will reside"
}

variable "suffix" {
  type        = string
  description = "Suffix used at the end of a resource name"
}