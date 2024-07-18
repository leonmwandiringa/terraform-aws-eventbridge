output "rule_id" {
  description = "The evenbridge rule id"
  value       = aws_cloudwatch_event_rule.default.id
}

output "rule_arn" {
  description = "The evenbridge rule arn"
  value       = aws_cloudwatch_event_rule.default.arn
}