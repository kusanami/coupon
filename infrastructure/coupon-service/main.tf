resource "null_resource" "coupon-service" {

  provisioner "local-exec" {
    command = "kubectl apply --kubeconfig ${var.config_path} --filename ${path.module}/data/coupon-service.yaml"
  }

}

resource "null_resource" "coupon-ingress" {

  provisioner "local-exec" {
    command = "kubectl apply --kubeconfig ${var.config_path} --filename ${path.module}/data/coupon-ingress.yaml"
  }

}
