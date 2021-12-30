resource "aws_s3_bucket" "beanstalk_deploys" {
  bucket = "${var.nome}-deplays"
}

resource "aws_s3_bucket_object" "docker" {
    depends_on = [
      aws_s3_bucket.beanstalk_deploys
    ]
  bucket = "${var.nome}-deplays"
  key    = "${var.nome}.zip"
  source = "${var.nome}.zip"
  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("${var.nome}.zip")
}