variable "base_url" {
  type        = string
  description = "url of the enterprise github server"
  default     = "https://githubqa.service.anz/"
}
variable "owner" {
  type        = string
  description = "organisation name"
  default     = "terra-pract1"
}

variable "token" {
  type        = string
  description = "personel access token"
  default     = "f9a0081ad4c8c31c769be8eef9f5000e3c4dbfa0"
}


variable "admins"{
  type        = list(string)
  description =  "Owners of the organisation"
  default     = ["shanmur7admin","manjunn5admin","raya"]

}
