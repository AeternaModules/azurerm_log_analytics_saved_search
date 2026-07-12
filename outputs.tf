output "log_analytics_saved_searches_category" {
  description = "Map of category values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.category }
}
output "log_analytics_saved_searches_display_name" {
  description = "Map of display_name values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.display_name }
}
output "log_analytics_saved_searches_function_alias" {
  description = "Map of function_alias values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.function_alias }
}
output "log_analytics_saved_searches_function_parameters" {
  description = "Map of function_parameters values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.function_parameters }
}
output "log_analytics_saved_searches_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.log_analytics_workspace_id }
}
output "log_analytics_saved_searches_name" {
  description = "Map of name values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.name }
}
output "log_analytics_saved_searches_query" {
  description = "Map of query values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.query }
}
output "log_analytics_saved_searches_tags" {
  description = "Map of tags values across all log_analytics_saved_searches, keyed the same as var.log_analytics_saved_searches"
  value       = { for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : k => v.tags }
}

