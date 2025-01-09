# Define the required Terraform version
terraform {
  required_version = ">= 1.0.0"
}

variable "example_var" {
  description = "An example variable"
  type        = string
  default     = "default_value"
}

# A mock resource that won't create anything
resource "null_resource" "example" {
  triggers = {
    always_run = timestamp()
  }
}

# Output example
output "example_output" {
  value = "This is an example output: ${var.example_var}"
}

