output "oss_id" {
  value = alicloud_oss_bucket.bucket-acl.id
}

output "oss_class" {
  value = alicloud_oss_bucket.bucket-acl.storage_class
}