# tfw-aws-stepfunctions
terraform wrapper around terraform-aws-modules/terraform-aws-step-functions

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.32 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_step-functions"></a> [step-functions](#module\_step-functions) | terraform-aws-modules/step-functions/aws | ~> 4.2.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_state_machines"></a> [state\_machines](#input\_state\_machines) | map of state machines(s) to be provisioined | <pre>map(object({<br>    lambda_arns = list(string)<br>    definition  = string<br>    type        = optional(string, "STANDARD")<br>    tags        = optional(map(string), {})<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->