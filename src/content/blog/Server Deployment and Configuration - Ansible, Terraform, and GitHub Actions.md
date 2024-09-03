---
title: Server Deployment and Configuration:\ Ansible, Terraform, and GitHub Actions
description: Modernizing Server Deployment and Configuration:\ Ansible, Terraform, and GitHub Actions
pubDate: Feb 11 2024
heroImage: /blog-placeholder-about.jpg
---

# Modernizing Server Deployment and Configuration: Ansible, Terraform, and GitHub Actions

In a previous post, we discussed the concept of marginal gains and how they can accumulate to create significant improvements. Recently, we've made some infrastructure improvements that have proven to be more than just marginal – they've been transformative. We've adopted a modern DevOps approach, leveraging Terraform for infrastructure provisioning, Ansible for server configuration, and GitHub Actions for automated code deployments.

## The Old Way: Manual and Repetitive

Previously, our process for setting up new projects was time-consuming and repetitive. It typically followed this pattern:

1. Project begins
2. Manually provision server(s) (usually on a cloud provider like AWS or DigitalOcean)
3. Manually install and configure:
   - Ubuntu
   - Apache
   - PHP
   - MariaDB
   - Git
   - Drush
   - Redis, etc.
4. Manually deploy project codebase from GitHub
5. Development cycle:
   - Pull Requests opened, reviewed, merged
   - Manually login to server via SSH, git pull
   - Repeat...

This process was not only time-consuming but also prone to human error and inconsistencies between environments.

## The New Way: Automated and Consistent

Now, our workflow looks dramatically different:

1. Project begins
2. Use Terraform to provision infrastructure
3. Use Ansible to configure servers
4. Use GitHub Actions to automatically deploy code
5. Development happens with automated deployments on every merge to main

Let's break down each of these modern tools and how they've improved our workflow:

### Terraform: Infrastructure as Code

Terraform allows us to define our infrastructure as code. This means we can version control our infrastructure, easily replicate environments, and quickly spin up new servers or entire environments with just a few commands.

Benefits:
- Consistent infrastructure across all environments
- Version-controlled infrastructure changes
- Easy replication of environments for testing or scaling

Here's a simple example of a Terraform configuration for provisioning a server:

```hcl
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}
```

### Ansible: Configuration Management

Ansible automates the configuration of our servers, ensuring that each server is set up identically and correctly every time.

Benefits:
- Consistent server configurations
- Easily roll out updates across multiple servers
- Reusable roles for common configurations

Here's an example of an Ansible playbook for configuring a web server:

```yaml
---
- hosts: webservers
  roles:
    - common
    - apache
    - php
    - mariadb
    - drupal
```

### GitHub Actions: Continuous Deployment

GitHub Actions replaces Jenkins in our workflow, providing a modern, integrated solution for continuous integration and deployment.

Benefits:
- Tightly integrated with our code repository
- Easy to set up and maintain
- Provides detailed logs and status checks directly in pull requests

Here's a simple GitHub Actions workflow for deploying a Drupal site:

```yaml
name: Deploy to Production

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Deploy to server
      uses: appleboy/ssh-action@master
      with:
        host: ${{ secrets.HOST }}
        username: ${{ secrets.USERNAME }}
        key: ${{ secrets.SSH_PRIVATE_KEY }}
        script: |
          cd /var/www/yourProject/docroot/
          git pull
          composer install
          drush updb -y
          drush cim -y
          drush cr
```

## The Results

By adopting these modern DevOps practices, we've seen significant improvements:

1. **Time Savings**: What used to take hours now takes minutes.
2. **Consistency**: All our environments are identical, eliminating "it works on my machine" issues.
3. **Scalability**: We can easily scale up our infrastructure to meet demand.
4. **Developer Focus**: Developers can focus on writing code, not managing servers.
5. **Improved Collaboration**: Infrastructure and deployment configs are now part of our version-controlled codebase.
6. **Faster Deployments**: Code is automatically deployed as soon as it's merged, getting features to clients faster.

## Conclusion

While there was certainly an upfront investment in setting up this new workflow, the long-term benefits have far outweighed the costs. We've gained control over our environments, eliminated repetitive tasks, and freed up our team to focus on delivering value to our clients. If your team is facing similar challenges, consider implementing these modern DevOps practices. The improvements in efficiency, consistency, and developer satisfaction are well worth the effort.

