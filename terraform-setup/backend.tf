# Comment out the below if you are working on local

terraform {
  required_version = ">= 1.3.0"
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "SCTP_Coaching18_IaC-setup-luke.tfstate" #Change the value of this to <your suggested name>.tfstate for  example
    region = "us-east-1"
  }
}