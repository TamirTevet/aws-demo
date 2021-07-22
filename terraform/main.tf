### Provider ###
provider "aws" {
  region  = "eu-central-1"
  access_key = "enter-access-key"
  secret_key = "enter-secret-key"
}

### Backend ###
# terraform {
#   backend "s3" {
#     bucket = "pipeline-artifacts-tamir"
#     key    = "arn:aws:s3:::aws-cicd-pipeline-tamir"
#     region = "eu-central-1"
#     # profile = "default"
#   }
# }

### Keypair ###
resource "aws_key_pair" "default" {
  key_name = "key"
  public_key = file("public")
}
