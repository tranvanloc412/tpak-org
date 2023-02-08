resource "github_team" "my_team" {
  name        = "my-team"
  description = "My cool team"
}

resource "github_team_membership" "my_team_membership" {
  team_id  = "${github_team.my_team.id}"
  username = "vanloc132"
  role     = "member"
}