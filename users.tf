# Add users to the organization
resource "github_membership" "org_members" {
  for_each = local.user_member_map
  username = each.value
  role     = "member"
}

resource "github_membership" "org_admins" {
  for_each = local.user_admin_map
  username = each.value
  role     = "admin"
}

# resource "github_team_membership" "my_team" {
#   count      = "${length(local.my_team_email_list)}"
#   username   = "${lookup(local.user_map, element(local.my_team_email_list, count.index))}"
#   role       = "member"
# }
