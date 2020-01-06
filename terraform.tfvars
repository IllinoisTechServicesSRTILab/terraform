terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "uiuc-tech-services-srti"
      key            = "terraform/${path_relative_to_include()}/terraform.tfstate"
      region         = "us-west-2"
      encrypt        = true
      dynamodb_table = "terragrunt"
    }
  }

  terraform {
    extra_arguments "custom_vars" {
      commands  = ["${get_terraform_commands_that_need_vars()}"]

      optional_var_files = [
        "${get_tfvars_dir()}/${find_in_parent_folders("common.tfvars")}"
      ]
    }
  }
}
