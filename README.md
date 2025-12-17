# terraform-google-document-ai

## Description

The Terraform module handles the creation of Document AI processors on Google Cloud.

## Assumptions and prerequisites
This module assumes that below mentioned prerequisites are in place before consuming the module.

- To deploy this blueprint you must have an active billing account and billing permissions.
- APIs are enabled.
- Permissions are available.

## Documentation
- [Document AI](https://cloud.google.com/document-ai)

## Usage

Basic usage of this module is as follows:

```hcl
module "document_ai" {
  source  = "terraform-google-modules/document-ai/google"
  version = "~> 0.1"

  project_id  = "<PROJECT ID>"
  location  = "<LOCATION>"
  processor_display_name  = "<PROCESSOR_DISPLAY_NAME>"
  processor_type  = "<PROCESSOR_TYPE>"
  kms_key_name  = "<KMS_KEY_NAME>"
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| kms\_key\_name | The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management. | `string` | `""` | no |
| processor\_display\_name | The name of the document ai processor. Must be unique | `string` | n/a | yes |
| processor\_location | Document AI location, see https://cloud.google.com/document-ai/docs/regions, possible values eu,us | `string` | n/a | yes |
| processor\_type | Document AI processor type, refer: https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.processorTypes#resource:-processortype | `string` | n/a | yes |
| project\_id | The ID of the project in which the resource belongs. If it is not provided, the provider project is used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| processor\_id | The full Document AI processor path ID |
| processor\_name | The resource name of the processor. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.13
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v3.0

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- Document AI Admin: `roles/documentai.admin`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Google Cloud Document AI API: `documentai.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

## Security Disclosures

Please see our [security disclosure process](./SECURITY.md).
