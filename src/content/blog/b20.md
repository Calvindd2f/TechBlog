---
title: Terraform - Fortigate Firewall Generic Config WIP
description: TF Fortinet configuration
pubDate: Jun 20 2024
heroImage: /blog-sonar.jpg
tags: ['Fortigate']
categories: ['Terraform']
---
 

1. Provider configuration
2. Fortigate Firewall resource
3. SSLVPN configuration
4. Custom certificate setup
5. Firewall policy for SSLVPN

My Terraform configuration that should meet my requirements:

```hcl

# Configure FortiOS Provider
terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname = var.fortigate_hostname
  token    = var.fortigate_api_token
  insecure = "true"
}

# Variables
variable "fortigate_hostname" {}
variable "fortigate_api_token" {}
variable "sslvpn_port" {
  default = 10443
}

# Fortigate Firewall Configuration
resource "fortios_system_global" "global_settings" {
  hostname = "FortiGate-Firewall"
}

# SSLVPN Configuration
resource "fortios_vpnssl_settings" "sslvpn_settings" {
  servercert = "custom_cert"
  port       = var.sslvpn_port
  tunnel_ip_pools = [
    "10.212.134.0/24",
  ]
  source_interface = [
    "wan1",
  ]
  source_address = [
    "all",
  ]
}

# Custom Certificate Configuration
resource "fortios_system_certificate_local" "custom_cert" {
  name = "custom_cert"
  certificate = file("/Fortigate/TF/clientname/certificate.crt")
  key         = file("/Fortigate/TF/clientname/private.key")
}

# SSLVPN -> LAN
resource "fortios_firewall_policy" "sslvpn_to_lan_policy" {
  name     = "SSLVPN to LAN"
  srcintf  = ["ssl.root"]
  dstintf  = ["lan"]
  srcaddr  = ["all"]
  dstaddr  = ["all"]
  action   = "accept"
  schedule = "always"
  service  = ["ALL"]
  nat      = "disable"
}

# Output the SSLVPN settings
output "sslvpn_settings" {
  value = fortios_vpnssl_settings.sslvpn_settings
}

```

This Terraform config sets up the Fortigates SSLVPN, custom certificate, and the required firewall policy. 

1. Provider Configuration: Sets up the FortiOS provider.
2. Variables: Defines variables for hostname, API token, and SSLVPN port.
3. Fortigate Firewall Configuration: Sets the hostname for the firewall.
4. SSLVPN Configuration: Configures SSLVPN settings, including the custom certificate and port 10443.
5. Custom Certificate Configuration: Adds a custom certificate to the firewall.
6. Firewall Policy: Creates a policy allowing traffic from SSLVPN to LAN.

To use this configuration:

1. Replace `path/to/your/certificate.crt` and `path/to/your/private.key` with the actual paths to your custom certificate and private key files.
2. Set the `fortigate_hostname` and `fortigate_api_token` variables when running Terrafor

## TODO: Extend

1. Adjust the IP pools, interfaces, and other settings as needed for your specific environment.
