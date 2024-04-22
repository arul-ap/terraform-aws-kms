variable "org" {
  description = "Organization code to inlcude in resource names"
  type = string
}
variable "proj" {
  description = "Project code to include in resource names"
  type = string
}
variable "env" {
  description = "Environment name to include in resource names"
  type = string
}
variable "cmk_keys" {
  type = map(object({
    description = string
    multi_region = optional(bool, false)
    delete_in_days = optional(number, 7)
    tags = map(string)
  }))
}
