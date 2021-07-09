output "config_path" {
  description = "Path to new kubectl config file"
  value       = pathexpand("${var.kubeconfig_path}/config")
}

output "worker_iam_role" {
  value   = aws_iam_role.eks_cluster_role
}

output "cluster_id" {
  description = "ID of the created cluster"
  value       = aws_eks_cluster.main.id
}
