resource "github_team" "team" {
  count       = "${var.name != "" ? 1 : 0}"

  name        = "${var.name}"
  description = "${var.description}"

  privacy     = "${var.privacy}"
}

resource "github_team_membership" "members" {
  count       = "${var.name != "" ? length(var.members) : 0}"

  team_id     = "${github_team.team.id}"

  username    = "${lookup(var.members[count.index], "username")}"
  role        = "${lookup(var.members[count.index], "role", "member")}"
}

resource "github_team_repository" "repositories" {
  count       = "${var.name != "" ? length(var.repositories) : 0}"
  team_id     = "${github_team.team.id}"

  repository  = "${var.repositories[count.index]}"
  permission  = "${var.permission}"
}
