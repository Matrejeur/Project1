terraform {

  backend "s3" {
    bucket = "apps-tf-state"
    key    = "Project1/state"
    region = "us-east-1"
  }
}