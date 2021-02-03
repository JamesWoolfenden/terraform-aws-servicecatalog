resource "aws_iam_group" "catalog_admin" {
  name = "catalog_admins"
}

resource "aws_iam_group_policy_attachment" "full" {
  group      = aws_iam_group.catalog_admin.name
  policy_arn = "arn:aws:iam::aws:policy/AWSServiceCatalogAdminFullAccess"
}

resource "aws_iam_group_policy_attachment" "service-catalog-admin" {
  group      = aws_iam_group.catalog_admin.name
  policy_arn = aws_iam_policy.admin.arn
}

resource "aws_iam_policy" "admin" {
  name   = "service-catalog-admin"
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:CreateKeyPair",
                "iam:AddRoleToInstanceProfile",
                "iam:AddUserToGroup",
                "iam:AttachGroupPolicy",
                "iam:CreateAccessKey",
                "iam:CreateGroup",
                "iam:CreateInstanceProfile",
                "iam:CreateLoginProfile",
                "iam:CreateRole",
                "iam:CreateUser",
                "iam:Get*",
                "iam:List*",
                "iam:PutRolePolicy",
                "iam:UpdateAssumeRolePolicy"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
POLICY
}
