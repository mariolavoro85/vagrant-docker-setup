resource "docker_image" "openldap" {
  name = "mariolavoro85/openldap:latest"
}

resource "docker_container" "openldap" {
  image   = docker_image.openldap.latest
  name    = "openldap"
  restart = "always"
  privileged = true
  ports {
    internal = 389
    external = 8389
  }
  volumes {
    host_path      = "/mnt/docker/volumes/openldap/ldif"
    container_path = "/ldif"
  }
  volumes {
    host_path      = "/mnt/docker/volumes/openldap/data/libs"
    container_path = "/var/lib/openldap/openldap-data"
  }
  env = [
    "ACCESS_CONTROL=access to * by * read",
    "LOG_LEVEL=stats",
    "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    "SUFFIX=dc=gbm,dc=lan",
    "ORGANISATION_NAME=Bmed Inc",
    "ROOT_PW=Pass1234",
    "ROOT_USER=admin",
    "USER_EMAIL=devops@example.com",
    "USER_GIVEN_NAME=Engineer",
    "USER_SURNAME=Devops",
    "USER_UID=devops"
  ]
}
