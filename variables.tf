variable "base_url" {
  type        = string
  description = "url of the enterprise github server"
  default     = "https://githubqa.service.anz/"
}
variable "owner" {
  type        = string
  description = "organisation name"
  default     = "git-terra-new-demo"
}

variable "token" {
  type        = string
  description = "personel access token"
  default     = "48590132289541abaa65793c0ddfc36295f0746d"
}


variable "admins"{
  type        = list(string)
  description =  "Owners of the organisation"
  default     = ["motatiradmin"]

}
