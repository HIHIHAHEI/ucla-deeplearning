remote_state {
  backend = "s3"
  config  = {
    bucket         = get_env("s3_bucket_name")
    key            = "terraform/aws-sagemaker.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ucla-deeplearning-terraform-lock"
  }
}