
resource "aws_s3_bucket_object" "data_object" {
  # checkov:skip=CKV_AWS_186: demo purposes - test BP
  bucket = aws_s3_bucket.data.id
  key    = "customer-master.xlsx"
  source = "resources/customer-master.xlsx"
  tags = merge({
    Name        = "${local.resource_prefix.value}-customer-master"
    Environment = local.resource_prefix.value
    }, {
    git_commit           = "2498c2205a876d10ca8f75c0d65c4b1e28fe70ce"
    git_file             = "terraform/aws/s3v2.tf"
    git_last_modified_at = "2022-04-04 07:24:52"
    git_last_modified_by = "102866684+bphanbc@users.noreply.github.com"
    git_modifiers        = "102866684+bphanbc/binhphan"
    git_org              = "bphanbc"
    git_repo             = "terragoat"
    yor_trace            = "a7f01cc7-63c2-41a8-8555-6665e5e39a64"
  })
}
