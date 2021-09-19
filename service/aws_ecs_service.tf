resource "aws_ecs_service" "webapp-service" {
  name            = "sample-service"
  cluster         = aws_ecs_cluster.sample-ecs-cluster.id
  task_definition = aws_ecs_task_definition.sample-task.arn
  desired_count   = 1
  launch_type     = "EC2"
}
