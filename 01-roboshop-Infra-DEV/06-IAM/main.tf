resource "aws_iam_role" "catalogue" {
  name = "CatalogueEC2-${var.env}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Action    = "sts:AssumeRole"
        Principal = { Service = "ec2.amazonaws.com" }
      }
    ]
  })

  tags = var.common_tags
}

resource "aws_iam_role_policy_attachment" "catalogue_ssm" {
  role       = aws_iam_role.catalogue.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "catalogue_profile" {
  name = "catalogue-profile-${var.env}"
  role = aws_iam_role.catalogue.name
  tags = var.common_tags
}