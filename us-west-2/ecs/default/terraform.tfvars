terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "git::git@github.com:techservicesillinois/as-aws-modules//ecs?ref=v0.8.11"
  }
}

name = "default"
enable_ec2_container_instances = false
