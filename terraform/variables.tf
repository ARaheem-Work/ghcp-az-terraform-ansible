variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "tf-app-rg"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "EastUS"
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
