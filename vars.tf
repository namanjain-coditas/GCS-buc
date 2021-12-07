variable "environment" {
  default="dev"
  type = string
  description="Choose the environment in which you want bucket"
}
variable "region" {
  default="us-central1"
  type = string
  description="The region to create the terraform code"
}
variable "use_case" {
  default="testing-purpose"
  type = string
  description="Use-case of bucket"
}
variable "zone" {
  default="us-central1-c"
  type = string
  description="Zone used for the bucket" 
}
variable "bucket-name" {
  default="my-bucket"
  type = string
  description="name of the bucket in substring"
}
variable "loc" {
  type = string
  default="US"
  description="region where we want the bucket to be in"
}  
variable "project"{
    type = string
    default="shaped-glazing-334312"
    description="name of our gcp project"
}
variable "storage"{
    type=list(string)
    default= ["STANDARD", "MULTI_REGIONAL", "REGIONAL", "NEARLINE", "COLDLINE", "ARCHIVE"]
    description="different storage types of our bucket"
}
variable "versioning" {
  type    = string
  default = true
  description="enable or disable versioning in bucket"
}
variable "c"{
    type= number
    description="number need to be between 0-5 for storage type of bucket 0-STANDARD,1-MULTI_REGIONAL,2-REGIONAL,3-NEARLINE,4-COLDLINE,5-ARCHIVE"
    default=0
}
variable "rV"{
    type= number
    description="number need to be between 0-2 for the role of user,1-Reader,2-Owner,3-Writer"
    default=0
}
variable "role"{
    type=list(string)
    default= ["READER","OWNER","WRITER"]
}
variable "entity"{
    description="entity holding permission can be user-userid, group-groupid,group-email, domain-domain,project-team-projectId,allUsers,allAuthenticatedUsers"
    type=string
    default="allUsers"
}
variable "destroy"{
    description="If the value is true it will destroy all he objects inside the bucket while deleting the bucket"
    type=string
    default=true
}
variable "age"{
    type= number
    description="number of days after which the object will automatically gets deleted from the bucket"
    default=3
}