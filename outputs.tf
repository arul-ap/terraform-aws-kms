
output "key_id" {
  description = "CMK key ID"
  value       = { for k, v in aws_kms_key.cmk : k => v.key_id }
}
output "key_arn" {
  description = "CMK key ARN"
  value       = { for k, v in aws_kms_key.cmk : k => v.arn }
}
