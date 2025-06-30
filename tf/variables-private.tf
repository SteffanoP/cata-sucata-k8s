variable "compartment_id" {
  type        = string
  description = "The compartment to create the resources in"
  default     = "ocid1.tenancy.oc1..aaaaaaaay6oqdhnshvb6ogypltd6srzsjjxozwzut6t5z3uuc3gpu45h2ysq"
}
variable "region" {
  type        = string
  description = "The region to provision the resources in"
  default     = "us-ashburn-1"
}
variable "ssh_public_key" {
  type        = string
  description = "The SSH public key to use for connecting to the worker nodes"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFz9qg8aNah4nOyTbARZPEV2vGLlHRJ1SWcxteauENzZAytlOTRpGEPWGSwFfAhH45ljkZCo+URo06f/WiYgPx0uYjlMjU2HhEO0x5y9bS3q6zyCe1AoqKyZcYYTJkikK+hhBMN1JtWV9Z1VgG4fr9hepK8u+lkXDUpWZGW+C/q+T6pD/sHq24fA98q9x4N2CV1E3PcLgYime9w9nDxiAOOIWPPPKkiLkeyPznq2x98fE6PTlajbIcoP29NC3ZtwrWDvVbfN3Xp/hPzwdCr2KciLf2FlHu4zQ4ah3AJgC7WxFL4KFrImb5fq7xxuZStkj8hwEURroe5OFs6oAEZCymJilCLnRfmbs6p9s2D7NajEOTO+Mm+H3lpuAh6FF2o8CE69itmZFwRzFQBOw/E/6XAMC7damU3PPWkaK4HEhAsLUAThoVacq5rdZQSCJ3D+yeTckTIrlV+v/FMnVJk7/ZL4J3m0RDr+o7c17CqrkDI9FfWIVocHSRANEszZ4GOXk= steffanop@dell-xps-9320"
}
variable "bastion_allowed_ips" {
  type        = list(string)
  description = "List of IP prefixes allowed to connect via bastion"
  default     = ["170.239.111.0/24"]
}
variable "ad_list" {
  type        = list
  description = "List of length 2 with the names of availability regions to use"
  default     = ["QtNY:US-ASHBURN-AD-1", "QtNY:US-ASHBURN-AD-2"]
}
variable "git_token" {
  description = "Git PAT"
  sensitive   = true
  type        = string
  default     = null
}
variable "git_url" {
  description = "Git repository URL"
  default     = "https://github.com/multi-megaman/cata_sucata_mobile"
  type        = string
  nullable    = false
}
