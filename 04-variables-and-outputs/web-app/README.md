# Terraform Commands used

## Remembere we already establised a remote backend state.tf in 03-basics

- terraform init
- terraform plan -var db_pass="abcd1234"
- terraform apply -var db_pass="abcd1234" -auto-approve
- terraform destroy -var db_pass="abcd1234" -auto-approve
