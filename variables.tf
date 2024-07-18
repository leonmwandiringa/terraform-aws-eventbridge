variable "tags" {
  type = object({
    Name = string
    Author      = string
    Environment = string
    Provisioner = string
    Region      = string
    Project = string
  })
  description = "eb tags"
}

variable "event_name" {
  type = string
  description = "event name"
}

variable "event_description" {
  type = string
  description = "event description"
}

variable "event_bus_name" {
  type = string
  description = "event bus name"
  default = "default"
}

variable "target_execution_role_arn" {
  type = string
  description = "event execution role arn"
  default = null
}

variable "event_pattern" {
  type = any
  description = "event pattern object"
  default = null
}

variable "schedule_expression" {
  type = string
  description = "schedhule event to run every (n) amount of time by cron expression or rate string"
  default = null
}

variable "action_target_arn" {
  type = string
  description = "lambda function arn"
  default = null
}