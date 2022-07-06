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

## How to?

### Prerequisite
- terraform
- python3
- terraform-compliance
- digitalocean account and access token

#### Install terraform-compliance for testing

```bash
virtualenv .env --python=python3
```
```bash
pip install -r requriements.txt
```
```bash
source .venv/bin/activate
```


### How to use the terraform codes from this repository to create droplet?

- Terraform codes are in **terraform-digitalocean** directory. There are several files to create the droplet in Digitalocean.
- As mentioned above one need Digitalocean accounts api_access token. You can create the token from: https://cloud.digitalocean.com/account/api/tokens
- That token can be passed with environment variable.
```bash
export do_token=<TOKEN>
```

- Then the necessary steps for terraform-
  - 
  ```bash
  cd terraform-digitalocean
  ```
  ```bash
  terraform init
  ``` 
  ```bash
  terraform validate
  ```
  ```bash
  terraform plan -input=false -var "do_token=$do_token" -out terraform.plan.out
  ```
- You can now test the terraform plan and see if necessary defined resource are fine with your expectation-
  - 
  ```bash
  terraform-compliance --features ../features --planfile terraform.plan.out
  ```

- If you find above test ok and finally want to create the resources like Project, VPC, Droplet-
  - 
  ```bash
  terraform apply terraform.plan.out
  ```

## Keep in mind

There are some things to keep in mind or you might want to change.
- To change the Behaviour-Driven Development (BDD) testing codes, check **features** directory and the feature file.
- To change the instance attributes like which size, location, server os, name etc then change them in **terraform.tfvars** file.