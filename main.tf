terraform {
  required_providers {
    anypoint = {
      source = "mulesoft-anypoint/anypoint"
      version = "1.5.2"
    }
  }
}
provider "anypoint" {
  # client_id     = "f064f7462d1948f7986fb2c77feebe5e"
  # client_secret = "ba3BA95152894695a9e0D8c169B81070"

    username = "CraftSoftwareB30"              # optionally use ANYPOINT_USERNAME env var
    password = "Nebihaamir@123" 
}
# data "anypoint_connected_app" "test_connected_app" {
#       id = "6145bbd35e1948f2877536b037469008" # existing Connected App client id

#     # client_secret = "ba3BA95152894695a9e0D8c169B81070"
# }

resource "anypoint_env" "env" {
  org_id = var.root_org_id   # environment related business group
  name = "test"                  # environment name
  type = "sandbox"              # environment type : sandbox/production
}