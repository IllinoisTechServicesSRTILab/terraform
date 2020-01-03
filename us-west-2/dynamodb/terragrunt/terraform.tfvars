terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "git::git@github.com:cites-illinois/as-aws-modules//dynamodb/terragrunt?ref=v0.6.21"
  }
}
