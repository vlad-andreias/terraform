provider "aws" {
  region = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "iam-user2" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.11.2"
  name="my_user_created_from_module1"


}
output user_arn {
  value = module.iam-user2.iam_user_arn
}
