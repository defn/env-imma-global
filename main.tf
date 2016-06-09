provider "aws" {
  region = "${var.provider_region}"
}

module "global" {
  source = "../module-aws-global"

  provider_region = "${var.provider_region}"

  bucket_remote_state = "${var.bucket_remote_state}"

  az_count = "${var.az_count}"
  az_names = "${var.az_names}"
}
