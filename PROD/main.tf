terraform {
    cloud {
    organization = "nebihaamirfeb23"
    workspaces {
      name = "tf"
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
    anypoint = {
      source = "mulesoft-anypoint/anypoint"
      version = "1.5.1"
    }
  }
}
provider "anypoint" {
  # client_id     = "f064f7462d1948f7986fb2c77feebe5e"
  # client_secret = "ba3BA95152894695a9e0D8c169B81070"

    username = "CraftSoftwareB30"              # optionally use ANYPOINT_USERNAME env var
    password = "Nebihaamir@123" 
}

// Connected app

resource "anypoint_connected_app" "PROD_Connected_app" {
    name = "PROD_Connected_app"
    grant_types = ["authorization_code"]

    audience = "everyone"
    # client_uri = "https://mysite.com"
    # redirect_uris = [
    #     "https://myothersitei.com"
    # ]
    # public_keys = [
    #     "some_public_key"
    # ]

    scope {
        scope = "full"
    }

    scope {
        scope = "read:full"
    }
}