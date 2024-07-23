locals {
  function_name = "hello-world"
  src_path      = "${path.module}/lambda/${local.function_name}"

  binary_name  = "bootstrap"
  output_path  = "${path.module}/tf_generated/${local.binary_name}"
  binary_path  = "${path.module}/lambda/${local.function_name}/tf_generated/${local.binary_name}"
  archive_path = "${path.module}/tf_generated/${local.binary_name}.zip"
}

output "binary_path" {
  value = local.output_path
}