output "log_analytics_saved_searches_id" {
  description = "Map of id values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_saved_searches_category" {
  description = "Map of category values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.category if v.category != null && length(v.category) > 0 }
}
output "log_analytics_saved_searches_display_name" {
  description = "Map of display_name values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "log_analytics_saved_searches_function_alias" {
  description = "Map of function_alias values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.function_alias if v.function_alias != null && length(v.function_alias) > 0 }
}
output "log_analytics_saved_searches_function_parameters" {
  description = "Map of function_parameters values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.function_parameters if v.function_parameters != null && length(v.function_parameters) > 0 }
}
output "log_analytics_saved_searches_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "log_analytics_saved_searches_name" {
  description = "Map of name values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "log_analytics_saved_searches_query" {
  description = "Map of query values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.query if v.query != null && length(v.query) > 0 }
}
output "log_analytics_saved_searches_tags" {
  description = "Map of tags values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

