plugin "aws" {
  enabled = true
  version = "0.33.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "terraform_comment_syntax" {
    enabled = true
}

rule "terraform_deprecated_interpolation" {
    enabled = false
}

rule "terraform_naming_convention" {
    enabled = true
}

rule "terraform_unused_declarations" {
    enabled = true
}

rule "terraform_required_providers" {
    enabled = false
}

rule "terraform_required_version" {
    enabled = false
}

rule "terraform_typed_variables" {
    enabled = false
}
