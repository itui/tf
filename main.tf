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
    username = "CraftSoftwareB30"              
    password = "Nebihaamir@123" 
}

resource "anypoint_env" "env" {
  # org_id = var.root_org_id   # environment related business group
  org_id = "cba5ec70-2e53-4af3-b5c7-2eb142dc6a19"
  name = "test"                  # environment name
  type = "sandbox"              # environment type : sandbox/production
}

resource "anypoint_team" "team" {
  org_id = var.root_org_id
  parent_team_id = "bcb23e48-16ac-4092-b9a9-3c1c9e95a1c8"
  # parent_team_id = var.parent_team_id
  team_name = "my_new_team_tf"
}


