######################################################################################
# required variables
######################################################################################
variable "state_machines" {
  description = "map of state machines(s) to be provisioined"

  type = map(object({
    lambda_arns = list(string)
    definition  = string
    type        = optional(string, "STANDARD")
    tags        = optional(map(string), {})
  }))
}


######################################################################################
# optional variables
######################################################################################
