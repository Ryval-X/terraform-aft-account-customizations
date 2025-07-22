data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "app-utils-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "shared-common-files-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "logs-archieve-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
