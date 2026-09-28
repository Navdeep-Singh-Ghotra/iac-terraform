# iac-terraform
Terraform code exercides


You need to modify Terraform state manually for testing or debugging purposes.

You want to store your Terraform state in a secure location that is accessible for both you and any additional team members you work with.

Terraform also uses a dependency lock file (.terraform.lock.hcl) to record the exact versions of providers used in your project

Use terraform init- upgrade to upgrade to a newer version within your constraints.
 It’s a good practice to commit the lock file to version control and your Terraform configuration files, ensuring infrastructure consistency across different environments and team members.

You are using an older version of Terraform (0.15 or earlier) and need to upgrade to the latest 1.x version. While many users have already made this transition, understanding the upgrade process is crucial for maintaining legacy systems or joining projects that may still use older versions.

Solution
Upgrading from legacy versions of Terraform must be a measured process and has to be done step-by-step:

Create a backup of your Terraform state file(s) in case you need to restore to a previous version of the state file manually.

Determine if you are running the latest version of your current major version. For example, if you are on v0.12, make sure you are on v0.12.31, the latest 0.12 version of Terraform at the time of writing.

Update to the latest version of v0.13 and run the upgrade command terraform 0.13upgrade to make a best-effort upgrade to your code with version-specific syntax changes in mind.

Following the upgrade command, inspect your code and verify line-by-line that all changes are intentional.
When all changes look satisfactory, use the Terraform Plan and Apply approach until you can verify that the upgrade has been completed.

The terraform fmt command automatically formats your Terraform code to follow the recommended style guidelines, making it easier to read and maintain. This command should be run in the same directory as your Terraform configuration files.

The terraform validate command checks the syntax and semantics of your Terraform code to ensure that it’s valid before applying it. It checks for syntax errors, missing required arguments, and incorrect references. However, it does not check if the configuration will produce the desired infrastructure.

The terraform console command provides an interactive console that allows you to evaluate Terraform expressions, functions, and interpolation. This tool is helpful for rapid experimentation and debugging without affecting your existing configuration files.

You want to validate your Terraform code by ensuring that specific conditions are met before applying the configuration (preconditions) and after applying the configuration (postconditions).

We define preconditions using the validation block within the variable block and postconditions using a null_resource with a local-exec provisioner.

Problem
You are developing Terraform configurations and want to ensure they comply with specific policies and best practices. To achieve this, you want to use Open Policy Agent (OPA) to validate your Terraform code against defined policies before applying the configuration. You need a solution to implement policy-as-code validation using OPA.

OPA is a general-purpose policy engine that allows you to define and enforce policies across your infrastructure. You can use OPA with Terraform to implement policy as code and validate your Terraform configurations against custom policies.
OPA provides a powerful way to enforce governance and compliance across your infrastructure code. It can be integrated into CI/CD pipelines to automate policy checks as part of the deployment process. To integrate OPA into your CI/CD pipeline, you can add a step that runs the OPA evaluation after the Terraform plan stage. If OPA reports any policy violations, the pipeline can be configured to fail, preventing noncompliant changes from being applied

Problem
You are developing Terraform modules and want to generate documentation automatically for your code. The documentation should include information about inputs, outputs, providers, and resources defined in the module. You need a solution to automate the generation of module documentation using the terraform-docs tool.


The terraform-docs tool is a third-party utility that automatically generates documentation for Terraform modules. It produces documentation based on the module’s inputs, outputs, providers, resources, and other elements defined in the Terraform code. The tool can generate documentation in various formats, including Markdown, JSON, YAML, and HTML.

Limiting the blast radius in Terraform involves several best practices:

Modularize your code
Breaking your infrastructure into smaller, reusable modules allows you to independently isolate changes and manage components. This makes it easier to understand the impact of changes and reduces the risk of unintended side effects.

Use HCP Terraform for state management
HCP Terraform provides a secure, centralized location for managing state files. Using separate workspaces for different environments (dev, staging, prod) ensures that changes in one environment don’t affect others. This approach also offers benefits such as state locking to prevent concurrent modifications and role-based access control for team collaboration.

Implement fine-grained IAM policies
Follow the principle of least privilege when defining IAM roles and policies. In this example, we created a role that only allows read access to S3. This limits the potential damage caused by a misconfiguration or compromise.

Use variables to control resource creation
You can easily limit the scope of changes by using variables to toggle the creation of resources or entire feature sets. This is particularly useful for testing new features or managing different configurations across environments.

Implement strong change management practices
Use Git branches, pull requests, and code reviews to ensure changes are thoroughly vetted before being applied. Consider using Terraform’s plan output as part of your review process to understand the changes that will be made.

Leverage HCP Terraform’s sentinel policies
Use sentinel policies to enforce governance rules across your infrastructure. This can prevent noncompliant resources from being created or modified.

Use smaller, more frequent applies
Instead of making significant, sweeping changes, aim for smaller, incremental updates. This makes it easier to identify and roll back problematic changes.

Regularly test your infrastructure code
Implement unit tests for your modules and integration tests for your complete setup. Tools such as Terratest can be valuable for this purpose.

Use Terraform’s -target flag judiciously
While not recommended for regular use, the -target flag can help limit the scope of an apply operation during troubleshooting or emergencies.

Problem
While creating infrastructure using Terraform, user inputs often need to be processed for extra whitespace, newlines, or other unexpected characters. This can lead to errors or inconsistencies in resource creation if not correctly handled. Therefore, knowing how to clean user inputs using Terraform’s built-in functions like chomp and trimspace is essential.

