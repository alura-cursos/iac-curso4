terraform {
  backend "s3" {
    bucket = "terraform-state-alura"
    key    = "homolog/terraform.tfstate"
    region = "us-west-2"
  }
}