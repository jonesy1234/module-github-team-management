# GitHub Team Management

This module will create and manage the members of a team within GitHub

## Usage

* Create team1 with members and roles

```hcl
module "team1" {
  source = "git::https://github.com/jonesy1234/module-github-team-management.git"

  team        = "team1"
  description = "Awesome terraform team"
  privacy     = "closed"

  members = [
    {
      username    = "12345678"
      description = "Bob Marley"
      role        = "member"
    },
    {
      username    = "87654321"
      description = "Marley Bob"
      role        = "maintainer"
    }
  ]

}
```

## Inputs notes

* Module assumes that members are part of the target Organisation.
* Organisation owners can only be applied the maintainer role.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| github | 4.3.0 |

## Providers

| Name | Version |
|------|---------|
| github | 4.3.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [github_team](https://registry.terraform.io/providers/integrations/github/4.3.0/docs/resources/team) |
| [github_team_membership](https://registry.terraform.io/providers/integrations/github/4.3.0/docs/resources/team_membership) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | A description of the team | `string` | n/a | yes |
| members | Usernames, description and roles of the users within the team. Role must be one of member or maintainer. Module assumes that users are are part of the target organisation. Description only used for reference to associate stafflink to human | <pre>list(object({<br>    username    = number<br>    description = string<br>    role        = string<br>  }))</pre> | n/a | yes |
| privacy | The level of privacy for the team. Must be one of secret or closed | `string` | `"closed"` | no |
| team | The name of the team | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| github\_team | The resulting team object |
| github\_team\_membership | The resulting team membership object |
