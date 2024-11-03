provider "alicloud" {
  profile = "test"
  region = "ap-southeast-1"
}

resource "alicloud_oss_bucket" "bucket-acl" {
  bucket = var.backet_name
}

resource "alicloud_oss_bucket_acl" "bucket-acl" {
  bucket = alicloud_oss_bucket.bucket-acl.bucket
  acl    = "private"
}