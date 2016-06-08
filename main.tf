provider "aws" {
  region = "${var.provider_region}"
}

module "global" {
  source = "../module-aws-global"

  provider_region = "${var.provider_region}"

  bucket_remote_state = "${var.bucket_remote_state}"
}
