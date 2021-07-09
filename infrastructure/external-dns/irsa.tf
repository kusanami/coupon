resource "aws_iam_policy" "external_dns" {

  name = "external-dns-policy"
  path = "/"
  description = "Allows access to resources needed to run external dns."

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "route53:ChangeResourceRecordSets"
      ],
      "Resource": [
        "arn:aws:route53:::hostedzone/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "route53:ListHostedZones",
        "route53:ListResourceRecordSets"
      ],
      "Resource": [
        "*"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "external_dns" {
  role = var.aws_iam_role_for_policy.name
  policy_arn = aws_iam_policy.external_dns.arn
}
