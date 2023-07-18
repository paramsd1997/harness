module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.7"

  account_id = "FVzKMaDlRXKeRar8KeFJLw"
  delegate_token = "MTFhZDBmODc0YTE4NGZkM2ZjMDc3MTg5YTk1ZGFkMWU="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "harness-delegate-ng"
  manager_endpoint = "https://app.harness.io/gratis"
  delegate_image = "harness/delegate:23.06.79707"
  replicas = 1
  upgrader_enabled = false
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
