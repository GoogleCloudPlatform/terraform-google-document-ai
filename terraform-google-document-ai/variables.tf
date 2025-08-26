/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}

variable "processor_display_name" {
  description = "The name of the document ai processor. Must be unique"
  type        = string
}

variable "processor_type" {
  description = "Document AI processor type, refer: https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.processorTypes#resource:-processortype"
  type        = string
}

variable "location" {
  description = "Document AI location, see https://cloud.google.com/document-ai/docs/regions"
  type        = string
}

# Optional variable
variable "kms_key_name" {
  description = "The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management."
  type        = string
  default     = ""
}
