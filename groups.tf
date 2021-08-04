  resource "aws_iam_group" "Administrators" {
  name = "Administrators"
  path = "/"
}

resource "aws_iam_group" "MFAUsers" {
  name = "MFAUsers"
  path = "/"
}

resource "aws_iam_group_membership" "Administrators" {
  name  = "Administrators-group-membership"
  users = ["simon.bowen", "hemant.bhavsar", "stuart.humphries"]
  group = "Administrators"
}

resource "aws_iam_group_membership" "MFAUsers" {
  name  = "MFAUsers-group-membership"
  users = ["simon.bowen", "hemant.bhavsar", "stuart.humphries"]
  group = "MFAUsers"
}

