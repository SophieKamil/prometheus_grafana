terraform {
  required_version = "0.11.14"
  backend "s3" {
    bucket = "task3bucketprom"
    key    = "path/to/my/key"
    #dynamodb_table = "state_class"
    region = "eu-west-2"
  }
}