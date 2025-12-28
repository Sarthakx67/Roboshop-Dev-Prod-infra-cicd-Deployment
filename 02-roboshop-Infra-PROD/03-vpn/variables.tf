variable "common_tags" {
  default = {
    Project = "roboshop"
    component = "vpn"
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