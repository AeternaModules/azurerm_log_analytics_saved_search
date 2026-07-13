variable "log_analytics_saved_searches" {
  description = <<EOT
Map of log_analytics_saved_searches, attributes below
Required:
    - category
    - display_name
    - log_analytics_workspace_id
    - name
    - query
Optional:
    - function_alias
    - function_parameters
    - tags
EOT

  type = map(object({
    category                   = string
    display_name               = string
    log_analytics_workspace_id = string
    name                       = string
    query                      = string
    function_alias             = optional(string)
    function_parameters        = optional(list(string))
    tags                       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        length(v.category) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        length(v.query) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        v.function_alias == null || (length(v.function_alias) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        v.function_parameters == null || (alltrue([for x in v.function_parameters : can(regex("^[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+(=[^,\\n]+)?|\\(\\*\\)|(\\([a-zA-Z_][a-zA-Z0-9-_]*:[a-z]+(,[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+))*\\)))(,\\s*[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+(=[^,\\n]+)?|\\(\\*\\)|(\\([a-zA-Z_][a-zA-Z0-9-_]*:[a-z]+(,\\s*[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+))*\\))))*$", x))]))
      )
    ])
    error_message = "Log Analytics Saved Search Function Parameters must be in the following format: param-name1:type1=default_value1 OR param-name1:type1 OR param-name1:string='string goes here'"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_saved_searches : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

