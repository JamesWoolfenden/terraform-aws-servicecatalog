variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "readers" {
  default = "bridgecrew_catalog_readers"
}

variable "maintainers" {
  default = "bridgecrew_catalog_maintainers"
}

variable "portfolio" {
  default = {
    name          = "My App Portfolio"
    description   = "List of my organizations apps"
    provider_name = "James"
  }
}


variable "constraint_role" {
  default = "Bridgecrew-installer"
}
