output "key_id" {
  description = "CMK key id"
  value       = module.kms.key_id
}
output "key_arn" {
  description = "CMK key ARN"
  value       = module.kms.key_arn
}
