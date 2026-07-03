terraform {
  backend "gcs" {
    bucket = "solid-league-302410-tfstate"
    prefix = "terraform/state"
    
  }
}