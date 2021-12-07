module "gcs"{
    source          ="./modules/"
    bucket-name     =var.bucket-name
    location        =var.loc
    destroy         =var.destroy
    use_case        =var.use_case
    storage         =var.storage[var.c]
    versioning      =var.versioning
    role            = var.role[var.rV]
    entity          = var.entity
    environment     =var.environment
    age             =var.age
}