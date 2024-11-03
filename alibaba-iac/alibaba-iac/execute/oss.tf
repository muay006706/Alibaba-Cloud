provider "alicloud" {
  profile = "test"
  region = "ap-southeast-1"
}

module "oss" {
  source = "../oss"
  backet_name = "muay-true-idc"
}

module "oss-1" {
  source = "../oss"
  backet_name = "muay-true-idc2"
}

module "oss-2" {
  source = "../oss"
  backet_name = "${module.oss.oss_id}-saofee-test"
}