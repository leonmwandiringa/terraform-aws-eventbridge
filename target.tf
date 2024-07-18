resource "aws_cloudwatch_event_target" "action" {
  count = var.action_target_arn != null ? 1 : 0
  arn  = var.action_target_arn
  rule = aws_cloudwatch_event_rule.default.id
}