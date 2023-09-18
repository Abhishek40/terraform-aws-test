output "aws_sfn_state_machine" {
  value = aws_sfn_state_machine.sfn_athena.name
}

output "invoke_crawler_function" {
  value = aws_lambda_function.invoke_crawler_function.arn
}

output "data_generation_function" {
  value = aws_lambda_function.data_generation_function.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.s3_start_athena.bucket_domain_name
}