variable "owner_id" {
  default = "Z02892083E5EDMMV0M4QB"
}

variable "kubernetes_namespace" {
  default = "kube-system"
  description = "Kubernetes namespace to deploy external dns."
}

variable "kubernetes_resources_labels" {
  default = {}
  description = "Additional labels for kubernetes resources."
}

variable "kubernetes_deployment_image_registry" {
  default = "registry.opensource.zalan.do/teapot/external-dns"
}

variable "kubernetes_deployment_image_tag" {
  default = "latest"
}

variable "aws_iam_policy_name" {
  default = "KubernetesExternalDNS"
  description = "Name of AWS IAM policy."
}

variable "aws_iam_role_for_policy" {
  description = "AWS role name for attaching IAM policy"
}

variable "region" {
  description = "the AWS region in which resources are created"
}
