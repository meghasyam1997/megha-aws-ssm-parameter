resource "aws_ssm_parameter" "parameters" {
  count  = length(var.parameters)
  name   = var.parameters[count.index].name
  value  = var.parameters[count.index].value
  type   = "String"
  key_id = "54baa543-c347-432e-ab40-108d5d0b67bb"
}

resource "aws_ssm_parameter" "parameters" {
  count  = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  type   = "SecureString"
  key_id = "54baa543-c347-432e-ab40-108d5d0b67bb"
}
