variable "region" {
  type = string
  #default = "eu-central-1"
}

variable "s3_bucket_prefix" {
  type    = string
  default = "apigw-lambda-ddb"
}

variable "dynamodb_table" {
  type    = string
  default = "Movies"
}

variable "lambda_name" {
  type    = string
  default = "movies-post"
}

variable "apigw_name" {
  type    = string
  default = "apigw-http-lambda"
}

variable "lambda_log_retention" {
  type    = number
  default = 7
}

variable "apigw_log_retention" {
  type    = number
  default = 7
}