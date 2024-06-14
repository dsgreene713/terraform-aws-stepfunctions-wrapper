module "step-functions" {
  source  = "terraform-aws-modules/step-functions/aws"
  version = "~> 4.2.0"

  for_each = var.state_machines

  name       = each.key
  definition = each.value.definition
  type       = each.value.type
  tags       = each.value.tags

  service_integrations = {
    xray = {
      xray = true
    }
    lambda = {
      lambda = each.value.lambda_arns
    }
  }
}