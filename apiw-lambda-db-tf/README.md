# Amazon API Gateway to AWS Lambda to Amazon DynamoDB Integration

This pattern explains how to deploy a sample application using Amazon API Gateway, AWS Lambda, and Amazon DynamoDB with terraform. When an HTTP POST request is made to the Amazon API Gateway endpoint, the AWS Lambda function is invoked and inserts an item into the Amazon DynamoDB table.

## Deployment Instructions

1. Create a new directory, navigate to that directory in a terminal and clone the GitHub repository:
    ``` 
    git clone https://github.com/Abhishek40/apiw-lambda-db-tf.git
    ```
1. From the command line, initialize terraform to download and install the providers defined in the configuration:
    ```
    terraform init
    ```
1. From the command line, apply the configuration in the main.tf file:
    ```
    terraform apply
    ```
1. During the prompts:
    * Enter yes
1. Note the outputs from the deployment process, these contain the resource names and/or ARNs which are used for testing.

## How it works

When an HTTP POST request is sent to the Amazon API Gateway endpoint, the AWS Lambda function is invoked and inserts an item into the Amazon DynamoDB table.

## Testing

Once the stack is deployed, retrieve the HttpApiEndpoint value from the outputs of the terraform apply, then make a call the /movies endpoint using curl or Postman.
Check the dynamodb table to make sure new items have been created.


```
# Send an HTTP POST request without a request body and the lambda function will add a default item to the dynamodb table

curl -X POST '<your http api endpoint>'/movies

#sample output

{
  "message": "Successfully inserted data!"
}
```

```
# Send an HTTP POST request an include a request body in the format below and the lambda function will create a new item in the dynamodb table

curl -X POST '<your http api endpoint>'/movies \
> --header 'Content-Type: application/json' \
> -d '{"year":2023, "title":"Gadar2"}' 

#sample output

{
  "message": "Successfully inserted data!"
}
```


## Cleanup
 
1. Delete all created resources
    ```bash
    terraform destroy
    ```
1. During the prompts:
    * Enter yes
1. Confirm all created resources has been deleted
    ```bash
    terraform show
    ```