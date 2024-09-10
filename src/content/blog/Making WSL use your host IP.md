---
title: Forcing WSL2 to use your hosts IP address.
description: Forcing WSL2 to use your hosts IP address for better networking / hosting.
pubDate: Aug 10 2024
heroImage: /golden_image_GitOpsPipeLine-Ansible_Automation
tags: ['Unix','WSL','Networking']
categories: ['WSL']
---

Open an elevated powershell terminal in your $HOME directory.

`cd`

Create or open your `.wslconfig file`

If you have not created it, simply do:

`echo '' > .wslconfig`
or
`nvim .wslconfig`

I've changed my `wsl2.networkingmode` to `mirrored`, I will also dump my config file for your review.


```wslconfig
[wsl2]
memory=3GB
processors=2
pageReporting=true
localhostForwarding=true
guiApplications=true
nestedVirtualization=true
vmIdleTimeout=14400
swap=8GB
networkingMode=mirrored
[boot]
systemd=true


[experimental]
autoMemoryReclaim=gradual
```

[Here](https://learn.microsoft.com/en-us/windows/wsl/networking) is a reference to the microsoft documentation on setting up your config file. You may not I also use systemd in wsl2.

For sake of demonstration, I will run `Ipconfig` to output my host IP address

```
IPv4 Address. . . . . . . . . . . : 192.168.1.1
Subnet Mask . . . . . . . . . . . : 255.255.255.0
Default Gateway . . . . . . . . . : fe80::a7b:12ff:fe8e:83e7%6
                                    192.168.1.254
```

And the output of `ip a` on wsl. I've filtered out non-useful interfaces for brevity and `eth0 `is all that matters.

```
┌──(c㉿calvin)-[/mnt/c/Users/c]
└─$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet 10.255.255.254/32 brd 10.255.255.254 scope global lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1488 qdisc mq state UP group default qlen 1000
    link/ether 7c:10:c9:9d:87:24 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.1/24 brd 192.168.1.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever
    inet6 2001:bb6:462:1200:8d0:3f54:9f96:becf/128 scope global nodad noprefixroute
       valid_lft forever preferred_lft forever
    inet6 2001:bb6:462:1200:7d7f:a0c5:232:69aa/64 scope global nodad deprecated noprefixroute
       valid_lft forever preferred_lft 0sec
    inet6 fe80::c95b:4a8d:dbe3:830f/64 scope link nodad noprefixroute
       valid_lft forever preferred_lft forever
```

To showcase this further, I spin up a quick python HTTP server on WSL

```
┌──(c㉿calvin)-[/mnt/c/Users/c]
└─$ python3 -m http.server 9090
Serving HTTP on 0.0.0.0 port 9090 (http://0.0.0.0:9090/) ...
```

On the windows host, opening a browser to http://localhost:9090 results in an index/directory list for your `~` directory in wsl.