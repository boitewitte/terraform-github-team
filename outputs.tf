output "team_id" {
  value = "${element(concat(github_team.team.*.id, list("")), 0)}"
}

output "repositories" {
  value = ["${var.repositories}"]
}

output "members" {
  value = ["${github_team_membership.members.*.username}"]
}
