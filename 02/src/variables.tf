  ###cloud vars
  variable "token" {
    type        = string
    description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
    default = "y0_AgAAAAA5Q4q8AATuwQAAAAEA1QdNAACjqFkjvdFDLo7enzAoVoH_IdZNtA"
  }

  variable "cloud_id" {
    type        = string
    description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
    default = "b1gnuldr4183fmmqop51"
  }

  variable "folder_id" {
    type        = string
    description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
    default = "b1g76dajgmshp6d78b0m"
  }

  variable "default_zone" {
    type        = string
    default     = "ru-central1-a"
    description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
  }
  variable "default_cidr" {
    type        = list(string)
    default     = ["10.0.1.0/24"]
    description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
  }

  variable "vpc_name" {
    type        = string
    default     = "develop"
    description = "VPC network & subnet name"
  }


  ###ssh vars
variable "metadata_ubuntu" {
  type = map(any)
  default = {
    serial_port_enable = 1,
    ssh_keys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPbBG3iqPd5iay6j063dfsdYjlAhMbKhb6+8n7zzLPWW natalia@m2012k11ag.lemaks.local"
    description = "ssh-keygen -t ed25519"
  }
}