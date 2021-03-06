variable "name" {}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "ssh_key_name" {}

variable "lb_ids" {}

variable "use_elb" {
  description = "To use ELB pass 1, to use ALB pass 0"
  default     = 1
}

variable "health_check_type" {
  default = "ELB"
}

variable "spot_enabled" {
  default = "false"
}

variable "scale_min_size" {
  default = "1"
}

variable "scale_desired_size" {
  default = "1"
}

variable "scale_max_size" {
  default = "1"
}

variable "ami_id" {}

variable "security_groups" {
  default = ""
}

variable "instance_type" {
  default = "t2.micro"
}

variable "root_volume_size" {
  default = "8"
}

variable "root_volume_type" {
  default = "standard"
}

variable "target_group_arn" {
  description = "Required for ALB"
  default     = ""
}

variable "userdata" {}

variable "health_check_target" {}

variable "iam_instance_profile" {
  default = ""
}

// Ref: https://github.com/hashicorp/terraform-aws-consul/blob/master/modules/consul-cluster/variables.tf
variable "tags" {
  description = "List fo extra tag blocks added to the autoscaling group configuration. Each element in the list is a map containing keys 'key', 'value', and 'propagate_at_launch' mapped to the respective values."
  type        = "list"
  default     = []
}
