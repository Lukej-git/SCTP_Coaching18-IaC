data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_ecr_repository" "s3_ecr" {
  name = "${local.usage_name}-s3-ecr"
}

data "aws_ecr_repository" "sqs_ecr" {
  name = "${local.usage_name}-sqs-ecr"
}

data "aws_vpc" "existing_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnets" "existing_subnets" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name_prefix]
  }
}

data "aws_security_group" "sqs_sg" {
  filter {
    name = "tag:Name"
    values = ["${local.usage_name}-sqs-ecs-sg"]
  }
}

data "aws_security_group" "s3_sg" {
  filter {
    name = "tag:Name"
    values = ["${local.usage_name}-s3-ecs-sg"]
  }
}