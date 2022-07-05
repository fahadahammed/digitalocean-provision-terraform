# DigitalOcean Provision with Terraform
This project emphasizes on deploying droplets and possibly other resources in DigitalOcean through terraform.

## Objectives
The objective of this repository and its content is to have a working version in some perspective.

It will have two basic task capable of doing.

1. Create DigitalOcean resources using Terraform
2. Test Terraform codes using terraform testing tool called terraform-compliance

If i focus with terraform, the objectives are like:

<ol type="a">
  <li>Create a project</li>
  <li>Create a VPC on a specific region</li>
  <li>Create resource with tags and assigned project and vpc to specific region</li>
</ol>

If I focus with terraform code testing, the objectives are like:

<ol type="a">
  <li>Test if the project is defined and properly named</li>
  <li>Test VPC if it has expected ip_range</li>
  <li>Check if tags are expected</li>
</ol>