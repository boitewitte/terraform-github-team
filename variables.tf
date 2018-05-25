variable "name" {
  type        = "string"
  description = "The name of the Github team"
  default     = ""
}

variable "description" {
  type        = "string"
  description = "A description of the Github team"
  default     = ""
}

variable "privacy" {
  type        = "string"
  description = "describe your variable"
  default     = "secret"
}

variable "members" {
  type        = "list"
  description = "Allows you to add/remove users from teams in your organization"
  default     = []
}

variable "permission" {
  type        = "string"
  description = "The permissions of team members regarding the repository"
  default     = "pull"
}

variable "repositories" {
  type        = "list"
  description = "List of repositories (name) to add to the team"
  default     = []
}