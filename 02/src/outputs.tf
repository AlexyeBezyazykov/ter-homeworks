output "output_network_interface" {
    value = {
        "network_interface_platform_web" = yandex_compute_instance.platform_web.network_interface[0].nat_ip_address,
        "network_interface_platform_db" = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address
        }
    description = "network_interface"

}