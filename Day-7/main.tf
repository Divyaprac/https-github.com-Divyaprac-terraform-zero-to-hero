provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "54.196.138.151:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "06d49d04-f467-c50f-ebbe-40072be523bd"
      secret_id = "2648019-2054-ac9d-acc5-be242fe303b0
"
    }
  }
}

/*data "vault_kv_secret_v2" "example" {
  mount = "secret" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["foo"]
  }
}*/
