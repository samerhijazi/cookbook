terraform init
terraform plan -var "do_token=${DO_TOKEN}" -var "pvt_key=${DO_KEY}"
terraform apply -var "do_token=${DO_TOKEN}" -var "pvt_key=${DO_KEY}"
terraform refresh -var "do_token=${DO_TOKEN}" -var "pvt_key=${DO_KEY}"
terraform show terraform.tfstate