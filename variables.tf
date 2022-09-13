variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "cluster" {
  description = "Neptune Cluster data"
  type        = map(any)
}

variable "instance" {
  type = map(any)
  apply_immediately = true
}

variable "count" {
  type = any
  description = "number of instances"
}

variable "engine" {
  type = any
  description = "Neptune engine name"
}

variable "instance_class" {
  type = any
  description = "type of neptune instance or instance class"
}

variable "subnet_group_name" {
  default = "main"
}

variable "subnet_ids" {
  type = list(any)
}

variable "vpc_id" {
  type        = string
  description = "Security Group needs to know where to ne made"
}

variable "kms_key_arn" {
  type        = string
  description = ""
}
