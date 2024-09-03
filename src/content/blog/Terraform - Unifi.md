---
title: Terraform - Unifi WAP/WLAC Configuration
description: Lorem ipsum dolor sit amet
pubDate: Sept 1 2024
heroImage: /ap_heatmap_irrelevant.png
---

Here is the Terraform file I use for deploying out Unifi WLAC / APs for clients. There are some fields that need to be check before execution but overall it saves a lot of time / heartache.

Ensure you have the WLAC/WAP SSH enabled and passwords configured before attempting the tf.

**terraform.tfvars**
```hcl
unifi_username = "admin"
unifi_password = "your_secure_password"
unifi_api_url  = "https://unifi.yourdomain.com:8443"
main_wifi_password = "your_main_wifi_password"
guest_wifi_password = "your_guest_wifi_password"
```

Before reviewing code here is a checklist that this terraform file performs:

```md
1. Sets up the UniFi provider and defines necessary variables.
2. Creates a site for the customer deployment.
3. Defines existing networks (VLANs 104 and 102) that are managed by Mikrotik, but need to be known to UniFi. DHCP is disabled as we assume Mikrotik handles this.
4. Creates wireless networks for main (on VLAN 104) and guest (on VLAN 102) usage.
5. Configures a UniFi Security Gateway (USG) with example settings for WAN and LAN interfaces.
6. Sets up a UniFi Switch with example port configurations, including a trunk port to Mikrotik and a port for the wireless AP.
7. Configures a UniFi Access Point.
8. Creates an example user group with QoS settings.
9. Adds a static route example, which might be necessary for routing to Mikrotik-managed networks.
```


**unifi_config.tf**
```terraform
# Configure the UniFi provider
terraform {
  required_providers {
    unifi = {
      source  = "paultyng/unifi"
      version = "0.41.0"
    }
  }
}

# Provider configuration
provider "unifi" {
  username = var.unifi_username
  password = var.unifi_password
  api_url  = var.unifi_api_url
  allow_insecure = true  # Set to false in production
}

# Variables
variable "unifi_username" {
  type        = string
  description = "Username for UniFi Controller"
}

variable "unifi_password" {
  type        = string
  description = "Password for UniFi Controller"
}

variable "unifi_api_url" {
  type        = string
  description = "URL for UniFi Controller API"
}

variable "main_wifi_password" {
  type        = string
  description = "Password for main WiFi network"
}

variable "guest_wifi_password" {
  type        = string
  description = "Password for guest WiFi network"
}

# Create a site
resource "unifi_site" "customer_site" {
  name        = "Customer Site"
  description = "Main site for customer deployment"
}

# Define existing networks (VLANs managed by Mikrotik)
resource "unifi_network" "vlan_104" {
  name    = "Wireless VLAN"
  purpose = "corporate"
  subnet  = "192.168.104.0/24"
  vlan_id = 104
  site    = unifi_site.customer_site.name
  dhcp_enabled = false  # Assuming DHCP is handled by Mikrotik
}

resource "unifi_network" "vlan_102" {
  name    = "Guest VLAN"
  purpose = "corporate"
  subnet  = "192.168.102.0/24"
  vlan_id = 102
  site    = unifi_site.customer_site.name
  dhcp_enabled = false  # Assuming DHCP is handled by Mikrotik
}

# Create Wireless Networks
resource "unifi_wlan" "main_wifi" {
  name       = "Main WiFi"
  passphrase = var.main_wifi_password
  security   = "wpapsk"
  network_id = unifi_network.vlan_104.id
  site       = unifi_site.customer_site.name
}

resource "unifi_wlan" "guest_wifi" {
  name       = "Guest WiFi"
  passphrase = var.guest_wifi_password
  security   = "wpapsk"
  network_id = unifi_network.vlan_102.id
  site       = unifi_site.customer_site.name
  guest_policy_enabled = true
}

# Configure UniFi Security Gateway (USG) settings
resource "unifi_device" "usg" {
  mac  = "00:11:22:33:44:55"  # Replace with actual MAC address of your USG
  name = "Main USG"
  site = unifi_site.customer_site.name

  # Example: Set WAN interface to use VLAN tagging
  wan1_networkgroup = "WAN"
  wan1_type = "dhcp"
  wan1_vlan_enabled = true
  wan1_vlan = 2  # Adjust as needed for your WAN VLAN

  # Example: Configure LAN interface
  lan_ip        = "192.168.1.1"  # Adjust as needed
  lan_networkg  = unifi_network.vlan_104.id  # Use wireless VLAN as primary LAN
}

# Configure UniFi Switch
resource "unifi_device" "main_switch" {
  mac  = "00:11:22:33:44:66"  # Replace with actual MAC address of your switch
  name = "Main Switch"
  site = unifi_site.customer_site.name

  # Example port configurations
  port_override {
    number       = 1
    name         = "Trunk to Mikrotik"
    port_profile = "All"  # Assuming this is a trunk port to Mikrotik
  }

  port_override {
    number       = 2
    name         = "Wireless AP"
    port_profile = unifi_network.vlan_104.id
  }

  # Add more port_override blocks as needed
}

# Configure UniFi Access Point
resource "unifi_device" "main_ap" {
  mac  = "00:11:22:33:44:77"  # Replace with actual MAC address of your AP
  name = "Main AP"
  site = unifi_site.customer_site.name
}

# Example: Create a user group
resource "unifi_user_group" "employees" {
  name = "Employees"
  qos_rate_max_down = 20000  # 20 Mbps
  qos_rate_max_up   = 10000  # 10 Mbps
  site = unifi_site.customer_site.name
}

# Example: Create a static IP assignment
resource "unifi_static_route" "to_mikrotik" {
  name    = "Route to Mikrotik"
  network = "10.0.0.0/8"  # Adjust to your Mikrotik-managed network
  next_hop = "192.168.1.254"  # Adjust to your Mikrotik's IP
  type     = "nexthop-route"
  site     = unifi_site.customer_site.name
}
```