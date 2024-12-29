variable "DATADOG_API_KEY" {
  description = "Datadog API key"
  type        = string
}

variable "DATADOG_APP_KEY" {
  description = "Datadog application key"
  type        = string
}

variable "DATADOG_API_URL" {
  description = "Datadog API URL"
  type        = string
  default     = "https://api.datadoghq.com"  # Default to US region
}
