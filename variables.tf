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
        v.function_parameters == null || (can(regex("^[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+(=[^,\\n]+)?|\\(\\*\\)|(\\([a-zA-Z_][a-zA-Z0-9-_]*:[a-z]+(,[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+))*\\)))(,\\s*[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+(=[^,\\n]+)?|\\(\\*\\)|(\\([a-zA-Z_][a-zA-Z0-9-_]*:[a-z]+(,\\s*[a-zA-Z_][a-zA-Z0-9-_]*:([a-z]+))*\\))))*$", v.function_parameters)))
      )
    ])
    error_message = "Log Analytics Saved Search Function Parameters must be in the following format: param-name1:type1=default_value1 OR param-name1:type1 OR param-name1:string='string goes here'"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_saved_search's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from savedsearches.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from savedsearches.ValidateWorkspaceID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

