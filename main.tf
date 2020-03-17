terraform {
  required_version = "= 0.12.18"
  backend "local" {
    path = "./tfstate/terraform.tfstate"
  }
}
# Docker provider
provider "docker" {
  host    = "tcp://192.168.56.102:2375/"
  version = "= 2.7.0"

}
