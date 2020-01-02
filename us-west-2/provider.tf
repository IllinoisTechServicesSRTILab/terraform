provider "aws" {
  region = "us-west-2"

  # avoid accidentally modifying the wrong AWS account
  allowed_account_ids = ["430229884637"]
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}
