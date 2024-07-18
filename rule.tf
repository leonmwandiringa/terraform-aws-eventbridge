resource "aws_cloudwatch_event_rule" "default" {
  name        = var.event_name
  description = var.event_description
  event_bus_name = var.event_bus_name
  role_arn = var.target_execution_role_arn

  event_pattern = var.event_pattern != null ? jsonencode(var.event_pattern) : null
  schedule_expression = var.schedule_expression
  tags = var.tags
}