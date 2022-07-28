# The different commands

- terraform init

- terraform plan -var db_pass_1="abcd1234" -var db_pass_2="abcd1234"

- terraform plan -var db_pass_1="abcd1234" -var db_pass_2="abcd1234" -lock=false

- terraform apply -var db_pass_1="abcd1234" -var db_pass_2="abcd1234" -auto-approve -lock=false

- terraform destroy -var db_pass_1="abcd1234" -var db_pass_2="abcd1234" -lock=false -auto-approve
