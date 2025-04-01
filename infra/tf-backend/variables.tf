# Define config variables
variable "label_prefix" {
  type        = string
  default     = "feli0041"
  description = "Your college username. This will form the beginning of various resource names."
}


variable "region" {
  default     = "canadacentral"
  description = "Resource region"
}

