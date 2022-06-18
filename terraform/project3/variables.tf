variable "envs" {
  type        = map(any)
  description = "List of Environments"
}

variable "location" {
  type        = string
  default     = "centralus"
  description = "Azure region where the resources will reside"
}