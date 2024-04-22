locals {
  description = "name prefix for resources"
  name-prefix = lower("${var.org}-${var.proj}-${var.env}")
}
data "aws_region" "current" {}

resource "aws_kms_key" "cmk" {
  for_each = var.cmk_keys
  description = each.value.description
  multi_region = each.value.multi_region
  deletion_window_in_days = each.value.delete_in_days
  enable_key_rotation = true
  tags = merge(each.value.tags,{
    Name = "${local.name-prefix}-${each.key}"
  })
}
