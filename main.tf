resource "aws_ssm_parameter" "parameters" {
  count  = length(var.parameters)
  name   = var.parameters[count.index].name
  value  = var.parameters[count.index].name
  type   = "String"
  key_id = "54baa543-c347-432e-ab40-108d5d0b67bb"
}