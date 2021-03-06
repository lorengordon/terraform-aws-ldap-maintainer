# API Gateway

terraform-aws-ldap-maintainer API Gateway module

## Overview

This module will deploy an API endpoint with invoke permissions to a target lambda function. This lambda function will then be executed asynchronously when the endpoint is triggered. Currently this endpoint has only been configured to respond to slack events.

<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| async\_lambda\_name | Name of the lambda function that API gateway will invoke asynchronously | `string` | n/a | yes |
| project\_name | (Optional) Name of the project | `string` | `"ldap-maintainer"` | no |
| stage\_name | Name of the api stage to deploy | `string` | `"ldapmaintainer"` | no |
| tags | Map of tags to assign to this module's resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| api\_gw\_role\_arn | ARN of the IAM role assigned to the API gateway |
| invoke\_url | Base url used to invoke this module's api endpoints |
| rest\_api | Object containing the API Gateway REST API |
| rest\_api\_deployment | Object containing the API Gateway REST API Deployment |
| slack\_listener\_api\_endpoint\_arn | ARN of the slack listener API endpoint |

<!-- END TFDOCS -->
