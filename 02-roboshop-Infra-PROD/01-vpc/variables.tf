variable "cidr_block" {
    default = "10.1.0.0/16"
}
variable "common_tags" {
  default = {
    Project = "roboshop-vpc",
    Environment = "PROD"
    Terraform = true
  }
}
variable "env" {
  default = "prod"
}
variable "project_name" {
  default = "roboshop"
}
variable "vpc_tags" {
    default = "roboshop-vpc"
}
variable "igw_tags" {
    default = "roboshop-igw"
}
variable "public_subnet_cidr_block" {
  default = ["10.1.1.0/24","10.1.2.0/24"]
}
variable "private_subnet_cidr_block" {
  default = ["10.1.11.0/24","10.1.12.0/24"]
}
variable "database_subnet_cidr_block" {
  default = ["10.1.21.0/24","10.1.22.0/24"]
}