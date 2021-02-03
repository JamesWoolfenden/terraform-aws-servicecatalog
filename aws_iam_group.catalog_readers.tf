resource "aws_iam_group" "catalog_readers" {
  name = var.readers
}


resource "aws_iam_group_policy_attachment" "readers" {
  group      = aws_iam_group.catalog_readers.name
  policy_arn = "arn:aws:iam::aws:policy/AWSServiceCatalogEndUserReadOnlyAccess"
}

//aws iam list-policies --query 'Policies[?PolicyName==`AWSServiceCatalogEndUserReadOnlyAccess`].Arn' --output text
