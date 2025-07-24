variable "policies" {
  description = "List of policy names to attach"
  type        = list(string)
  # Example: ["deny-regions", "deny-leave-org"]
}

variable "policy_id" {
  description = "Map of policy file paths to policy IDs"
  type        = map(string)
  # Example: {
  #   "policies/deny-regions.json" = "p-123456789"
  #   "policies/deny-leave-org.json" = "p-987654321"
  # }
}

variable "policies_directory_name" {
  description = "Directory name containing policy files"
  type        = string
  default     = "policies"
}

variable "ou" {
  description = "Organizational Unit ID to attach policies to"
  type        = string
  # Example: "ou-root-123456789"
}
