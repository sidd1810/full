resource "null_resource" "k8s_apply" {
  provisioner "local-exec" {
    command = "kubectl apply -f k8s/deployment.yaml"
  }
}

