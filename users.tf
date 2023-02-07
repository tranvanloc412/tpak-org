# Add a user to the organization
resource "github_membership" "locv898" {
  username = "vanloc132"
  role     = "member"   # or "admin" for an org owner
}