resource "google_storage_bucket" "gcs-bucket" {
    name            = "${var.environment}-${var.bucket-name}-${var.use_case}"
    location        = var.location
    force_destroy   = var.destroy  
    storage_class   = var.storage
    lifecycle_rule {
    condition {
      age = var.age
    }
    action {
      type = "Delete"
    }
  }
   versioning {
        enabled = var.versioning
    }
    labels = {
    environment             = var.environment
    bucket-name             = var.bucket-name
    can_be_deleted          = var.destroy
    created_using_terraform = true
  }      
}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.gcs-bucket.name
  role   = var.role
  entity = var.entity
}
