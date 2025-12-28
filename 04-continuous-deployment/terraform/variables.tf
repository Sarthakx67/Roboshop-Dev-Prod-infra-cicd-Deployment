variable "common_tags" {
  default = {
    Project = "roboshop"
    component = "catalogue"
    Environment = "PROD"
    Terraform = "true"
  }
}
variable "project_name" {
  default = "roboshop"
}
variable "env" {
  default = "prod"
}
variable "app_version" {
  default = "100.100.100"
}
variable "domain_name" {
  default = "stallions.space"
}