resource "aws_iam_policy" "deploy" {
  name        = "deploy"
  path        = "/"
  description = "deploy policy"
  policy      = file("aws_iam_policies/deploy_policy.json")
}

resource "aws_iam_policy" "sample_ecs_intance_policy" {
  name        = "sample-ecs-instance-policy"
  path        = "/"
  description = ""
  policy      = file("aws_iam_policies/ecs_instance_policy.json")
}
