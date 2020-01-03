terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "git::git@github.com:cites-illinois/as-aws-modules.git//s3/basic?ref=v0.6.20"
  }
}

name = "uiuc-tech-services-srti"
name_override = "true"
versioning_enabled = "true"
