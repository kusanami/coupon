variable "name" {
  description = "the name of your stack"
  default     = "coupon"
}

variable "environment" {
  description = "the name of your environment, e.g."
  default     = "challenge"
}

variable "region" {
  description = "the AWS region in which resources are created"
  default     = "us-east-1"
}

variable "availability_zones" {
  description = "a comma-separated list of availability zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "a list of CIDRs for private subnets in your VPC"
  default     = ["10.0.0.0/20", "10.0.32.0/20", "10.0.64.0/20"]
}

variable "public_subnets" {
  description = "a list of CIDRs for public subnets in your VPC"
  default     = ["10.0.16.0/20", "10.0.48.0/20", "10.0.80.0/20"]
}

variable "kubeconfig_path" {
  description = "Path where the config file for kubectl should be written to"
  default     = "/Users/luisruiz/workspace/alb-ingress-controller/coupon"
}

variable "config_path" {
  description = "Config file to create resources in the EKS cluster"
  default     = "/Users/luisruiz/workspace/alb-ingress-controller/coupon/config"
}

variable "k8s_version" {
  description = "kubernetes version to use in the EKS cluster"
  default     = "1.19"
}

variable "knative_version" {
  description  = "Knative version to use for manage the autoscaler"
  default       = "v0.20.0"
}

variable "domain" {
  description = "The domain used for the application service"
  default     = "couponlm.net"
}

variable "map_accounts" {
  description  = "Additional AWS account numbers to add to the aws-auth configmap"
  default      = [ "763172254126" ]
  }

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap"
  default     = [
    {
      rolearn  = "arn:aws:iam::763172254126:role/aws-service-role/eks-fargate.amazonaws.com/AWSServiceRoleForAmazonEKSForFargate"
      username = "AWSServiceRoleForAmazonEKSForFargate"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  default     = [
    {
      userarn  = "arn:aws:iam::763172254126:user/terraform"
      username = "terraform"
      groups   = ["system:masters"]
    },
  ]
}
