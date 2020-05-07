terraform {
backend "s3" {
bucket = "task3bucketprom"
key = "prometheus/eu-west-2/prometheus/dev/prometheus.tfstate"
region = "eu-west-2"
  }
}