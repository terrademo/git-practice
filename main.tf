terraform {
  required_providers {

    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.11"
}

#required authentications are:-
#  1. personal access token 
#  2. name of the organization in owner field
#  3. base_url if the enterprise github
provider "github" {
  token    = var.token
  owner    = var.owner
  base_url = var.base_url
}


module "teams" {
  source       = "./modules/teams"
  for_each     = local.github_ib_teams
  github_teams = each.value
}

module "members" {

  source     = "./modules/members"
  for_each   = tomap(yamldecode(file("./users.yaml"))).teams 
  teamid     = module.teams[each.key].teams_id #injecting team id from teams module to members module
  gh_members = each.value[*] 
  
  
  
}
module "organisation"{
  source = "./modules/organisation"
  org_members = compact(distinct(flatten(values(tomap(yamldecode(file("./users.yaml"))).teams))))
  admins     = var.admins
}


# output "teams_details" {
#   value = module.teams.teams_details
# }