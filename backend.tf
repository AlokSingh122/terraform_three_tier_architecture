terraform {
  backend "s3" {
    bucket = "terraform-state-2024"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}