resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-githubdemo-bucket-001-${random_id.suffix.hex}"
  project                  = "dev-001-467714"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket2" {
  name                     = "tt-githubdemo-bucket-002-${random_id.suffix.hex}"
  project                  = "dev-001-467714"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}

resource "random_id" "suffix" {
  byte_length = 4
}
