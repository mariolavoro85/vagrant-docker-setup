resource "docker_image" "oracle_database" {
  name = "mariolavoro85/database-ee:19.3.0"
}

# resource "docker_container" "oracle_database" {
#   image   = docker_image.oracle_database.latest
#   name    = "oracle_database"
#   restart = "always"
#   ports {
#     external = 8521
#     internal = 1521
#     ip       = "0.0.0.0"
#     protocol = "tcp"
#   }
#   ports {
#     external = 8500
#     internal = 5500
#     ip       = "0.0.0.0"
#     protocol = "tcp"
#   }
#   volumes {
#     host_path      = "/mnt/docker/volumes/oracle/data"
#     container_path = "/opt/oracle/oradata"
#     read_only      = false
#   }
#   env = [
#     "ORACLE_PDB=ORCLPDB1",
#     "ORACLE_PWD=Pass1234",
#     "ORACLE_SID=ORCLCDB",
#     "CHECK_DB_FILE=checkDBStatus.sh",
#     "CHECK_SPACE_FILE=checkSpace.sh",
#     "CLASSPATH=/opt/oracle/product/19c/dbhome_1/jlib:/opt/oracle/product/19c/dbhome_1/rdbms/jlib",
#     "CONFIG_RSP=dbca.rsp.tmpl",
#     "CREATE_DB_FILE=createDB.sh",
#     "INSTALL_DB_BINARIES_FILE=installDBBinaries.sh",
#     "INSTALL_DIR=/opt/install",
#     "INSTALL_FILE_1=LINUX.X64_193000_db_home.zip",
#     "INSTALL_RSP=db_inst.rsp",
#     "LD_LIBRARY_PATH=/opt/oracle/product/19c/dbhome_1/lib:/usr/lib",
#     "ORACLE_BASE=/opt/oracle",
#     "ORACLE_HOME=/opt/oracle/product/19c/dbhome_1",
#     "PATH=/opt/oracle/product/19c/dbhome_1/bin:/opt/oracle/product/19c/dbhome_1/OPatch/:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
#     "PWD_FILE=setPassword.sh",
#     "RUN_FILE=runOracle.sh",
#     "SETUP_LINUX_FILE=setupLinuxEnv.sh",
#     "START_FILE=startDB.sh",
#     "USER_SCRIPTS_FILE=runUserScripts.sh",
#   ]
#   network_mode      = "default"
#   privileged        = false
#   publish_all_ports = false
#   shm_size          = 64
#   start             = true
#   sysctls           = {}
#   tmpfs             = {}
#   user              = "oracle"
#   working_dir       = "/home/oracle"
#   healthcheck {
#     interval     = "1m0s"
#     retries      = 0
#     start_period = "5m0s"
#     test = [
#       "CMD-SHELL",
#       "\"$ORACLE_BASE/$CHECK_DB_FILE\" >/dev/null || exit 1",
#     ]
#     timeout = "0s"
#   }
# }
