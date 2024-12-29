resource "aws_s3_bucket" "langfuse_blob" {
  bucket = "${var.identity_name}-langfuse-blob-${var.env}"
}

resource "aws_s3_bucket" "langfuse_event" {
  bucket = "${var.identity_name}-langfuse-event-${var.env}"
}