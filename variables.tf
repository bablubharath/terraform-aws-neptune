variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "cluster" {
  description = "Neptune Cluster data"
  type        = map(any)
}

variable "count" {
  type = number
  description = "number of instances"
}

variable "engine" {
  type = string
  description = "Neptune engine name"
}

variable "instance_class" {
  type = string
  description = "type of neptune instance or instance class"
}

variable "apply_immediately" {
  type = bool
  description = "true or false"
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

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zone the instance is launched in. If not set, will be launched in the first AZ of the region"
  default     = []
}
