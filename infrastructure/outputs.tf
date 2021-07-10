output "config_path" {
  description = "Path to new kubectl config file"
  value       = module.eks.config_path
}

output "cluster_id" {
  description = "ID of the created cluster"
  value       = module.eks.cluster_id
}

output "worker_iam_role" {
  value       = module.eks.worker_iam_role
}
