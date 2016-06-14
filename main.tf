provider "aws" {
}

module "global" {
  source = "../module-aws-global"

  bucket_remote_state = "${var.bucket_remote_state}"

  az_count = "${var.az_count}"
  az_names = "${var.az_names}"
}
