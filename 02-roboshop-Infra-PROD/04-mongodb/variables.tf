variable "common_tags" {
  default = {
    Project = "roboshop"
    component = "mongodb"
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
variable "zone_name" {
  default = "stallions.space"
}
variable "mongodb_record_name"{
  default = "mongodb"
}