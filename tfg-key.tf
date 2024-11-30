resource "tls_private_key" "tfg_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Cria a chave pública no AWS EC2 Key Pairs
resource "aws_key_pair" "key_tfg" {
  key_name   = "tfg_key"  # Nome da chave no AWS
  public_key = tls_private_key.tfg_key.public_key_openssh
}

# Salva a chave privada localmente em um arquivo .pem
resource "local_file" "tfg_key_pem" {
  filename   = "./tfg_key.pem"
  content    = tls_private_key.tfg_key.private_key_pem
}