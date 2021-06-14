locals {
  user_role_map = { for d in var.members : d.username => d
  }
}

resource "github_team" "this" {
  name        = var.team
  description = var.description
  privacy     = var.privacy
}

resource "github_team_membership" "this" {
  for_each = local.user_role_map

  team_id  = github_team.this.id
  username = each.key
  role     = each.value.role
}