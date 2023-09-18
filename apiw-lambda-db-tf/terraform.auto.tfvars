region               = "ap-south-1"
dynamodb_table       = "Movies"
lambda_name          = "movies-post"
apigw_name           = "apigw-http-lambda"
lambda_log_retention = 7
apigw_log_retention  = 7
s3_bucket_prefix     = "apigw-lambda-ddb"