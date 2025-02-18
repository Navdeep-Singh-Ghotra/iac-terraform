# iac-terraform
Terraform code exercides


1	Understand Infrastructure as Code (IaC) concepts	Documentation	Tutorial
1a	Explain what IaC is	What is Terraform?

Infrastructure as Code in a Private or Public Cloud	Introduction to Infrastructure as Code with Terraform
1b	Describe advantages of IaC patterns	Infrastructure as code video

Infrastructure as Code in a Private or Public Cloud	Introduction to Infrastructure as Code with Terraform
2	Understand the purpose of Terraform (vs other IaC)	Documentation	Tutorial
2a	Explain multi-cloud and provider-agnostic benefits	Multi-Cloud Deployment	
2b	Explain the benefits of state	Purpose of Terraform State	Manage Resources in Terraform State
3	Understand Terraform basics	Documentation	Tutorial
3a	Install and version Terraform providers	Providers

Specifiying Provider Requirements

Dependency Lock File	Manage Terraform Versions

Lock and Upgrade Provider Versions
3b	Describe plugin-based architecture	Providers Summary

How Terraform Works with Plugins	Community Provider tutorials
3c	Write Terraform configuration using multiple providers	Provider Configuration	Define Infrastructure with Terraform Resources
3d	Describe how Terraform finds and fetches providers	Provider Configuration	Initialize Terraform Configuration
4	Use Terraform outside the core workflow	Documentation	Tutorial
4a	Describe when to use terraform import to import existing infrastructure into your Terraform state	Command: import

Import usage tips	
4b	Use terraform state to view Terraform state	State Command	Manage Resources in Terraform State
4c	Describe when to enable verbose logging and what the outcome/value is	Debugging Terraform	Troubleshoot Terraform
5	Interact with Terraform modules	Documentation	Tutorial
5a	Contrast and use different module source options including the public Terraform Registry	Finding and Using Modules	Modules Overview

Use Modules from the Registry
5b	Interact with module inputs and outputs	Input Variables

Accessing Module Output Values	Use Modules from the Registry
5c	Describe variable scope within modules/child modules	Input Variables

Calling a Child Module	Build and Use a Local Module
5d	Set module version	Module Versions	Use Modules from the Registry
6	Use the core Terraform workflow	Documentation	Tutorial
6a	Describe Terraform workflow ( Write -> Plan -> Create )	The Core Terraform Workflow	Build Infrastructure
6b	Initialize a Terraform working directory (terraform init)	Command: init	Initialize Terraform Configuration
6c	Validate a Terraform configuration (terraform validate)	Command: validate	Troubleshoot Terraform
6d	Generate and review an execution plan for Terraform (terraform plan)	Command: plan	Create a Terraform Plan
6e	Execute changes to infrastructure with Terraform (terraform apply)	Command: apply	Apply Terraform Configuration
6f	Destroy Terraform managed infrastructure (terraform destroy)	Command: destroy	Destroy Infrastructure
6g	Apply formatting and style adjustments to a configuration (terraform fmt)	Command: fmt	Troubleshoot Terraform
7	Implement and maintain state	Documentation	Tutorial
7a	Describe default local backend	Backends

Backend Type: local	Initialize Terraform Configuration
7b	Describe state locking	State Locking	
7c	Handle backend and cloud integration authentication methods	Command: login	Log in to HCP Terraform from the CLI
7d	Differentiate remote state back end options	Backend Types	Store Remote State
7e	Manage resource drift and Terraform state	Refresh-Only Mode	Manage Resource Drift

Use Refresh-Only Mode to Sync Terraform State
7f	Describe backend block and cloud integration in configuration	HCP Terraform Configuration

Backend Configuration	Create a Workspace

Store Remote State
7g	Understand secret management in state files	Sensitive Data in State	Protect Sensitive Input Variables
8	Read, generate, and modify configuration	Documentation	Tutorial
8a	Demonstrate use of variables and outputs	Input Variables

Output Values	Customize Terraform Configuration with Variables

Output Data from Terraform
8b	Describe secure secret injection best practice	Vault Provider for Terraform	Inject Secrets into Terraform Using the Vault Provider
8c	Understand the use of collection and structural types	Complex Types	Customize Terraform Configuration with Variables
8d	Create and differentiate resource and data configuration	Resources

Data Sources	Query Data Sources
8e	Use resource addressing and resource parameters to connect resources together	Resource Addressing

References to Named Values	Create Resource Dependencies
8f	Use HCL and Terraform functions to write configuration	Built-in Functions	Perform Dynamic Operations with Functions

Create Dynamic Expressions
8g	Describe built-in dependency management (order of execution based)	Resource Graph	Create Resource Dependencies

Target resources
9	Understand HCP Terraform capabilities	Documentation	Resource
9a	Explain how HCP Terraform helps to manage infrastructure	HCP Terraform Overview

HCP Terraform Workflow

Workspaces	HCP Terraform Get Started Collection

Share Modules in the Private Registry
9b	Describe how HCP Terraform enables collaboration and governance	HCP Terraform Teams

Sentinel	Manage Versions in HCP Terraform

Manage Permissions in HCP Terraform

Enforce a Policy