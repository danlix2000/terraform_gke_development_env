#  Provision a Testing/Dev GKE Cluster environment using Terraform (Terraform on MS Windows)

Create service account and download key

configure key file.

(This project executed in MS Windows environment and mapped service account key in file)

point key file in `main.tf` 

```
credentials = file("../credentials/secret.json")
```

update `terraform.tfvars` with relevant values

**Run below commands to env setup**
```
terraform init

terraform validate

terraform plan

terraform apply -auto-approve
```


Destroy Environment
```
terraform destroy -auto-approve 
```