# Define config variables
variable "labelPrefix" {
  type        = string
  default     = "feli0041"
  description = "Your college username. This will form the beginning of various resource names."
}

variable "region" {
  default = "canadacentral"
}

