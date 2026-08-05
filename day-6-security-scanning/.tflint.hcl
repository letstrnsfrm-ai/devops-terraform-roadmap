config {
  format = "compact"
  plugin_dir = "~/.tflint.d/plugins"
}

# Rule: Enforce module source version pinning
rule "terraform_module_pinned_source" {
  enabled = true
}

# Rule: Enforce provider version constraints
rule "terraform_required_version" {
  enabled = true
}

# Rule: Detect unused variable declarations
rule "terraform_unused_declarations" {
  enabled = true
}
