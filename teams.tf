locals {
  my_team = ["tranvanloc412", "vanloc132"]
}

resource "github_team" "my_team" {
  name        = "my-team"
  description = "My cool team"
}

resource "github_team_membership" "my_team_membership" {
  count    = length(local.my_team)
  team_id  = github_team.my_team.id
  username = element(local.my_team, count.index)
  role     = "member"
}
