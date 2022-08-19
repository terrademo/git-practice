variable "admins"{
    type  = list(string)
    description = "Owners of organisation"
    
}
variable "org_members"{
    type  = list(string)
    description = "Members in organisation"
}