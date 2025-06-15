variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "tf-app-rg"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "EastUS2"
}

variable "app_service_plan_name" {
  description = "Name of the App Service plan."
  type        = string
  default     = "tf-shared-plan"
}

variable "app_service_name" {
  description = "Name of the App Service."
  type        = string
  default     = "tf-basic-app"
}

variable "subscription_id" {
  description = "The Azure Subscription ID."
  type        = string
  default = "fc173b43-c76c-4e81-95b1-15cfc37abdda"  # Replace with your actual subscription ID
}
