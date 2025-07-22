data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "centralized-logs-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "logs-archieve-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
