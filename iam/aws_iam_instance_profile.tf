resource "aws_iam_instance_profile" "sample_ecs_instance_profile" {
  name = "sample-ecs-instance-profile"
  role = aws_iam_role.sample_ecs_instance_role.name
}
