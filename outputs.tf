output "log_analytics_saved_searches" {
  description = "All log_analytics_saved_search resources"
  value       = azurerm_log_analytics_saved_search.log_analytics_saved_searches
}
output "log_analytics_saved_searches_category" {
  description = "List of category values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.category]
}
output "log_analytics_saved_searches_display_name" {
  description = "List of display_name values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.display_name]
}
output "log_analytics_saved_searches_function_alias" {
  description = "List of function_alias values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.function_alias]
}
output "log_analytics_saved_searches_function_parameters" {
  description = "List of function_parameters values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.function_parameters]
}
output "log_analytics_saved_searches_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.log_analytics_workspace_id]
}
output "log_analytics_saved_searches_name" {
  description = "List of name values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.name]
}
output "log_analytics_saved_searches_query" {
  description = "List of query values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.query]
}
output "log_analytics_saved_searches_tags" {
  description = "List of tags values across all log_analytics_saved_searches"
  value       = [for k, v in azurerm_log_analytics_saved_search.log_analytics_saved_searches : v.tags]
}

