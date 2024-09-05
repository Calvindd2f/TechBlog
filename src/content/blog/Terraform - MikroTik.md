---
title: Terraform - MikroTik Switch Configuration
description: Lorem ipsum dolor sit amet
pubDate: Sept 1 2024
heroImage: /CRS328-24P.jpg
tags: ['MikroTik']
categories: ['Terraform']
---


Here is the Terraform file I use for deploying out Mikrotik switches for clients. There are some fields that need to be check before execution but overall it saves a lot of time / heartache.

```terraform
# Configure the Mikrotik provider
terraform {
  required_providers {
    mikrotik = {
      source = "ddelnano/mikrotik"
      version = "0.7.0"
    }
  }
}
#-----------------------------------------
# Provider configuration
provider "mikrotik" {
  host     = var.switch_ip
  username = var.switch_username
  password = var.switch_password
}
#-----------------------------------------
# Variables
variable "switch_ip" {
  type        = string
  description = "IP address of the Mikrotik switch"
}
variable "switch_username" {
  type        = string
  description = "Username for the Mikrotik switch"
}
variable "switch_password" {
  type        = string
  description = "Password for the Mikrotik switch"
}
#-----------------------------------------
# Configure VLANs
resource "mikrotik_bridge_vlan" "vlan100" {
  bridge   = "bridge1"
  vlan_ids = [100]
  tagged   = ["ether2", "ether3", "ether4", "ether5"]
}
resource "mikrotik_bridge_vlan" "vlan102" {
  bridge   = "bridge1"
  vlan_ids = [102]
  tagged   = ["ether2", "ether3", "ether4", "ether5"]
}
resource "mikrotik_bridge_vlan" "vlan103" {
  bridge   = "bridge1"
  vlan_ids = [103]
  tagged   = ["ether2", "ether3", "ether4", "ether5"]
}
resource "mikrotik_bridge_vlan" "vlan104" {
  bridge   = "bridge1"
  vlan_ids = [104]
  tagged   = ["ether2", "ether3", "ether4", "ether5"]
}
resource "mikrotik_bridge_vlan" "vlan255" {
  bridge   = "bridge1"
  vlan_ids = [255]
  tagged   = ["ether2", "ether3", "ether4", "ether5"]
}
#-----------------------------------------
# Configure interfaces for each VLAN
resource "mikrotik_interface_vlan" "vlan100" {
  name        = "vlan100"
  vlan_id     = 100
  interface   = "bridge1"
  comment     = "Main VLAN"
}
resource "mikrotik_interface_vlan" "vlan102" {
  name        = "vlan102"
  vlan_id     = 102
  interface   = "bridge1"
  comment     = "Guest VLAN"
}
resource "mikrotik_interface_vlan" "vlan103" {
  name        = "vlan103"
  vlan_id     = 103
  interface   = "bridge1"
  comment     = "Peripherals VLAN"
}
resource "mikrotik_interface_vlan" "vlan104" {
  name        = "vlan104"
  vlan_id     = 104
  interface   = "bridge1"
  comment     = "Wireless"
}
resource "mikrotik_interface_vlan" "vlan255" {
  name        = "vlan255"
  vlan_id     = 255
  interface   = "bridge1"
  comment     = "Internal Mgmt VLAN"
}
#-----------------------------------------
# Configure IP addresses for each VLAN
resource "mikrotik_ip_address" "vlan100_ip" {
  address   = "192.168.100.1/24"
  interface = mikrotik_interface_vlan.vlan100.name
  network   = "192.168.100.0"
}
resource "mikrotik_ip_address" "vlan102_ip" {
  address   = "192.168.102.1/24"
  interface = mikrotik_interface_vlan.vlan102.name
  network   = "192.168.102.0"
}
resource "mikrotik_ip_address" "vlan103_ip" {
  address   = "192.168.103.1/24"
  interface = mikrotik_interface_vlan.vlan103.name
  network   = "192.168.103.0"
}
resource "mikrotik_ip_address" "vlan104_ip" {
  address   = "192.168.104.1/24"
  interface = mikrotik_interface_vlan.vlan104.name
  network   = "192.168.104.0"
}
#-----------------------------------------
# Configure logging
resource "mikrotik_system_logging" "remote_log" {
  action {
    name        = "remote"
    remote      = "10.0.0.1"
    remote_port = 514
    src_address = "0.0.0.0"
    target      = "remote"
  }
  topics {
    firewall    = "warning"
    error       = "warning"
    critical    = "warning"
    info        = "info"
  }
}
#-----------------------------------------
# Configure local logging
resource "mikrotik_system_logging" "local_log" {
  action {
    name    = "disk"
    disk_file_name = "log"
    disk_lines_per_file = 1000
    disk_stop_on_full = false
    target  = "disk"
  }
  topics {
    info    = "info"
    warning = "warning"
    error   = "error"
  }
}
#-----------------------------------------
# Configure configuration backup
resource "mikrotik_system_scheduler" "config_backup" {
  name     = "Daily Config Backup"
  interval = "1d"
  on_event = "/system backup save name=daily"
  policy   = "ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon"
  start_time = "03:00:00"
}
#-----------------------------------------
# Configure DHCP server
resource "mikrotik_dhcp_server" "default" {
  name = "default"
  interface = "bridge1"
  lease_time = "8h"
  address_pool = "dhcp_pool1"
}
#-----------------------------------------
# Configure IP address
resource "mikrotik_ip_address" "lan" {
  address = "192.168.1.1/24"
  interface = "bridge1"
  network = "192.168.1.0"
}
#-----------------------------------------
# Configure DNS
resource "mikrotik_dns" "default" {
  servers = ["8.8.8.8", "8.8.4.4"]
  allow_remote_requests = true
}
#-----------------------------------------
# Configure a firewall rule
resource "mikrotik_firewall_filter" "allow_established" {
  chain = "forward"
  action = "accept"
  connection_state = "established,related"
  comment = "Allow established connections"
}
#-----------------------------------------
# Configure SNMP for monitoring
resource "mikrotik_snmp" "default" {
  enabled        = true
  contact        = "admin@example.com"
  location       = "Customer Site"
  trap_community = "public"
  trap_version   = 2
  trap_generators = ["interface"]
}
#-----------------------------------------
# Basic firewall rules
resource "mikrotik_firewall_filter" "allow_established" {
  chain = "forward"
  action = "accept"
  connection_state = "established,related"
  comment = "Allow established connections"
}
resource "mikrotik_firewall_filter" "drop_invalid" {
  chain = "forward"
  action = "drop"
  connection_state = "invalid"
  comment = "Drop invalid connections"
}
#-----------------------------------------


#-----------------------------------------
# THIS SECTION IS PRIMARILY FOR SCAN TO EMAIL SAFETY NET
#-----------------------------------------
# Allow port 587 from VLAN 104 to other internal VLANs
resource "mikrotik_firewall_filter" "allow_587_internal" {
  chain = "forward"
  action = "accept"
  src_address = "192.168.104.0/24"
  dst_address = "192.168.100.0/24,192.168.102.0/24,192.168.103.0/24"
  protocol = "tcp"
  dst_port = "587"
  comment = "Allow port 587 from VLAN 104 to other internal VLANs"
}
# Allow port 587 from VLAN 104 to WAN
resource "mikrotik_firewall_filter" "allow_587_to_wan" {
  chain = "forward"
  action = "accept"
  src_address = "192.168.104.0/24"
  out_interface = "ether1"  # Assuming ether1 is the WAN interface
  protocol = "tcp"
  dst_port = "587"
  comment = "Allow port 587 from VLAN 104 to WAN"
}
# NAT rule for port 587 traffic to WAN
resource "mikrotik_nat" "masquerade_587_to_wan" {
  chain = "srcnat"
  action = "masquerade"
  src_address = "192.168.104.0/24"
  out_interface = "ether1"  # Assuming ether1 is the WAN interface
  protocol = "tcp"
  dst_port = "587"
  comment = "Masquerade port 587 traffic from VLAN 104 to WAN"
}
#-----------------------------------------
# THIS SECTION ENABLES SSH ACCESS USING ssh_config.tf and a terraform.tfvars file
# 
## switch_ip       = "192.168.1.1"
## switch_username = "admin"
## switch_password = "your_secure_password"
## ssh_user        = "ssh_admin"
## ssh_password    = "your_secure_ssh_password"
#-----------------------------------------
# VARIABLES ARE DONE FIRST
#-----------------------------------------
variable "switch_ip" {
  type        = string
  description = "IP address of the Mikrotik switch"
}
variable "switch_username" {
  type        = string
  description = "Username for the Mikrotik switch"
}
variable "switch_password" {
  type        = string
  description = "Password for the Mikrotik switch"
}
variable "ssh_user" {
  type        = string
  description = "Username for SSH access"
  default     = "ssh_admin"
}
variable "ssh_password" {
  type        = string
  description = "Password for SSH access"
}
resource "mikrotik_ip_service" "ssh" {
  name     = "ssh"
  port     = 22
  disabled = false
}
#-----------------------------------------
# Create a user group for SSH access
resource "mikrotik_user_group" "ssh_group" {
  name   = "ssh_admins"
  policy = "ssh,ftp,reboot,read,write,policy,test,winbox,password,web,sniff,sensitive,api,romon,dude,tikapp"
}
# Create a user for SSH access
resource "mikrotik_user" "ssh_user" {
  name     = var.ssh_user
  password = var.ssh_password
  group    = mikrotik_user_group.ssh_group.name
}
# Configure SSH server settings
resource "mikrotik_system_ssh_server" "ssh_config" {
  strong_crypto = true
  allow_none_crypto = false
  max_auth_tries = 3
  host_key_algorithms = "ssh-rsa,ssh-ed25519"
}
#-----------------------------------------
#   SSH FIREWALL RULES
#-----------------------------------------
# Add a firewall rule to allow SSH access from management VLAN
resource "mikrotik_firewall_filter" "allow_ssh_mgmt" {
  chain         = "input"
  action        = "accept"
  protocol      = "tcp"
  dst_port      = "22"
  src_address   = "192.168.100.0/24"  # Assuming 192.168.100.0/24 is your management VLAN
  comment       = "Allow SSH from management VLAN"
}
# Block SSH access from other sources
resource "mikrotik_firewall_filter" "block_ssh_other" {
  chain         = "input"
  action        = "drop"
  protocol      = "tcp"
  dst_port      = "22"
  src_address   = "!192.168.100.0/24"  # Block all except management VLAN
  comment       = "Block SSH from non-management sources"
}
#-----------------------------------------
```