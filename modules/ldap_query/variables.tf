variable "project_name" {
  default     = "ldap-maintainer"
  description = "Name of the project"
  type        = string
}

variable "ldaps_url" {
  description = "LDAPS URL of the target domain"
  type        = string
}

variable "domain_base_dn" {
  description = "Distinguished name of the domain"
  type        = string
}

variable "svc_user_dn" {
  description = "Distinguished name of the user account used to manage simpleAD"
  type        = string
}

variable "svc_user_pwd_ssm_key" {
  description = "SSM parameter key that contains the service account password"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC hosting your Simple AD instance"
  type        = string
}

variable "log_level" {
  default     = "Info"
  description = "Log level of the lambda output, one of: Debug, Info, Warning, Error, or Critical"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Map of tags to assign to this module's resources"
  type        = map(string)
}

variable "additional_hands_off_accounts" {
  description = "List of accounts that will never be disabled"
  type        = list(string)
  default     = []
}

variable "artifacts_bucket_name" {
  description = "Name of the artifacts bucket"
  type        = string
}

variable "days_since_pwdlastset" {
  description = "Number of days since the pwdLastSet ldap attribute has been updated. This metric is used to disable the target ldap object."
  type        = number
  default     = 120
}
