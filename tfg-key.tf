resource "tls_private_key" "tfg_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_tfg" {
  key_name   = "tfg_key"       # Create a "myKey" to AWS!!
  public_key = tls_private_key.tfg_key.public_key_openssh

  provisioner "local-exec" { # Create a "myKey.pem" to your computer!!
    command = "echo '${aws_key_pair.key_tfg.key_name}' > ./tfg_key.pem"
  }
}