resource "docker_image" "artifactory" {
  name = "mariolavoro85/artifactory-oss:latest"
}

resource "docker_container" "artifactory" {
  image   = docker_image.artifactory.latest
  name    = "artifactory"
  restart = "always"
  ports {
    internal = 8081
    external = 8281
  }
  volumes {
    host_path      = "/mnt/docker/volumes/artifactory/data"
    container_path = "/var/opt/jfrog/artifactory"
  }
}
