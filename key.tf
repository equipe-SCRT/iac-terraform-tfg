variable "key_pair_name" {
  type = string
  default = "tfg_key"
}

resource "aws_key_pair" "generated_key" {
  key_name = var.key_pair_name
  public_key = file("tfg_key.pem.pub")
}