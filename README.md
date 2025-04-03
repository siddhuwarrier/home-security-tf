This repository contains the security policy configuration for my home network.

At the time of writing, my home network is very simple: it consists of a single Cisco Secure Firewall (FPR1120), which sits in front of everything else in my home network, that is managed by Cisco Security Cloud Control Firewall Manager.

All the Terraform in this repository is applied (and state managed) on https://siddhuwarrier.app.spacelift.io/. The CDO tenant API credentials are stored in AWS Secrets Manager.