output "main_instance_ips" {
  value = {
    for instance in google_compute_instance.vm_instance:
    instance.name => instance.network_interface[0].access_config[0].nat_ip
  }
}

output "additional_instance_ips" {
  value = module.additional_instances.instance_ips
}

output "database_connection" {
  value = module.database.database_connection
}

output "database_user" {
  value = module.database.database_user
}

output "database_password" {
  value     = module.database.database_password
  sensitive = true
}