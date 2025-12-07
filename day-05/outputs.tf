output "remote_vpc_id" {
  value = data.terraform_remote_state.demo.outputs.vpc_id
}
