---
title: Anisble VPS Automation Github Workflows
description: Lorem ipsum dolor sit amet
pubDate: Sept 1 2024
heroImage: /blog-placeholder-2.jpg
tags: ['Ansible','Automation','IaC','Git','Workflows']
categories: ['Automation']
---

I have recently been trying to get into the swing of Ansible for Unix Servers a bit more instead of uphill struggle with ansible on windows.  
I have created a boilerplate 'all systems clear' check playbook just for this reason.<br>
<br>Feel free to make use or modify these.

**system_config.yml**
```yml
#system_config.yml
- name: System Configuration and Package Installation
  hosts: all
  become: yes
  vars:
    packages:
      - nginx
      - postgresql
      - docker
    config_files:
      - src: templates/nginx.conf.j2
        dest: /etc/nginx/nginx.conf
      - src: templates/postgresql.conf.j2
        dest: /etc/postgresql/12/main/postgresql.conf

  tasks:
    - name: Update apt cache
      apt:
        update_cache: yes
        cache_valid_time: 3600

    - name: Install required packages
      apt:
        name: "{{ packages }}"
        state: present

    - name: Copy configuration files
      template:
        src: "{{ item.src }}"
        dest: "{{ item.dest }}"
      loop: "{{ config_files }}"
      notify:
        - Restart Nginx
        - Restart PostgreSQL

    - name: Ensure services are started and enabled
      systemd:
        name: "{{ item }}"
        state: started
        enabled: yes
      loop:
        - nginx
        - postgresql
        - docker

  handlers:
    - name: Restart Nginx
      systemd:
        name: nginx
        state: restarted

    - name: Restart PostgreSQL
      systemd:
        name: postgresql
        state: restarted
```

Then goto GitHub and create `.github/workflows/run_ansible_playbook.yml`:

**run_ansible_playbook.yml**
```yml
name: Run Ansible Playbook

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  ansible-playbook:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: Set up Python
      uses: actions/setup-python@v2
      with:
        python-version: '3.x'

    - name: Install Ansible
      run: |
        python -m pip install --upgrade pip
        pip install ansible

    - name: Install Ansible requirements
      run: ansible-galaxy install -r requirements.yml

    - name: Run Ansible playbook
      run: ansible-playbook -i inventory.yml system_config.yml
      env:
        ANSIBLE_HOST_KEY_CHECKING: false
```