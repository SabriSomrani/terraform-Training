terraform {
  backend "s3" {
    bucket = "sabri-remote-backend"
    key    = "remote.tfstate"
    region = "us-east-1"
  }
}
