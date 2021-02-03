resource "aws_iam_group" "catalog_maintainer" {
  name = var.maintainers

}

resource "aws_iam_group_policy_attachment" "maintainer" {
  group      = aws_iam_group.catalog_readers.name
  policy_arn = "arn:aws:iam::aws:policy/AWSServiceCatalogEndUserFullAccess"
}

//aws iam list-policies --query 'Policies[?PolicyName==`AWSServiceCatalogEndUserFullAccess`].Arn' --output text
