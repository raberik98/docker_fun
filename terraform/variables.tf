variable "region" {
  description = "Region for the provider"
  type = string
  default = "eu-central-1"
}

variable "profile" {
  description = "Profile for the region, likely the profile will assume a role"
  type = string
  default = "g-36"
  sensitive = false
}