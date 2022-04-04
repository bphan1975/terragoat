
resource "aws_s3_bucket_object" "data_object" {
  # checkov:skip=CKV_AWS_186: demo purposes - test BP
  bucket = aws_s3_bucket.data.id
  key    = "customer-master.xlsx"
  source = "resources/customer-master.xlsx"
  tags = merge({
    Name        = "${local.resource_prefix.value}-customer-master"
    Environment = local.resource_prefix.value
    }, {
    git_commit           = "763066c30fb499f7849a6e7761574fa154dbc803"
    git_file             = "terraform/aws/s3v2.tf"
    git_last_modified_at = "2022-04-02 15:57:26"
    git_last_modified_by = "binhphan@me.com"
    git_modifiers        = "binhphan"
    git_org              = "bphanbc"
    git_repo             = "terragoat"
    yor_trace            = "a7f01cc7-63c2-41a8-8555-6665e5e39a64"
  })
}
