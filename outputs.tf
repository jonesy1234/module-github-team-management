output "github_team_membership" {
  description = "The resulting team membership object"
  value       = github_team_membership.this.*
}

output "github_team" {
  description = "The resulting team object"
  value       = github_team.this.*
}