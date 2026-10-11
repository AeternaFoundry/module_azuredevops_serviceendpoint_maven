variable "serviceendpoint_mavens" {
  description = <<EOT
Map of serviceendpoint_mavens, attributes below
Required:
    - project_id
    - repository_id
    - service_endpoint_name
    - url
Optional:
    - description
    - authentication_basic (block):
        - password (required)
        - username (required)
    - authentication_token (block):
        - token (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id            = string
    repository_id         = string
    service_endpoint_name = string
    url                   = string
    description           = optional(string)
    authentication_basic = optional(object({
      password = string
      username = string
    }))
    authentication_token = optional(object({
      token = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_mavens : (
        !endswith(v.url, "/")
      )
    ])
    error_message = "[from validate.Url: must not end with \"/\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_mavens : (
        length(v.repository_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

