terraform {
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = "~> 3.0"
    }
  }
}

provider "datadog" {
  api_key = var.DATADOG_API_KEY
  app_key = var.DATADOG_APP_KEY
  api_url = var.DATADOG_API_URL
}

resource "datadog_dashboard" "example" {
  title       = "[TEST] Test-Dashboard2"
  description = "A sample dashboard created using Terraform"
  layout_type = "ordered"

  widget {
    timeseries_definition {
      title = "Sample Metric"
      request {
        q = "avg:system.cpu.user{*}"
      }
    }
  }
}

output "dashboard_id" {
  value = datadog_dashboard.example.id
}
