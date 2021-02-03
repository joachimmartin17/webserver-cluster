provider "aws" {
  region = "us-east-2"
  access_key = "AKIAXA5UNWV5IPHEV3NP"
  secret_key = "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"

}

module "webserver_cluster" {
  source = "modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "prodbucket"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
}