variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "PROD"
    Terraform = "true"
  }
}
variable "project_name" {
  default = "roboshop"
}
variable "env" {
  default = "prof"
}