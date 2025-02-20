resource "aws_ecr_repository" "my_repository" {
  name = "revolution-repository"

  image_tag_mutability = "IMMUTABLE"
  encryption_configuration {
    encryption_type = "AES256"
  }
}
