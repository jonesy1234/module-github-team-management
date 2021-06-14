variable "team" {
  description = "The name of the team"
  type        = string
}

variable "description" {
  description = "A description of the team"
  type        = string
}

variable "privacy" {
  description = "The level of privacy for the team. Must be one of secret or closed"
  type        = string
  default     = "closed"
}

variable "members" {
  description = "Usernames, description and roles of the users within the team. Role must be one of member or maintainer. Module assumes that users are are part of the target organisation. Description only used for reference to associate stafflink to human"
  type = list(object({
    username    = number
    description = string
    role        = string
  }))
}