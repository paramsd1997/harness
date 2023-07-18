#! bin/bash
helm repo add harness-delegate https://app.harness.io/storage/harness-download/delegate-helm-chart/
helm repo update harness-delegate


helm upgrade -i helm-delegate --namespace harness-delegate-ng --create-namespace \
  harness-delegate/harness-delegate-ng \
  --set delegateName=helm-delegate \
  --set accountId=FVzKMaDlRXKeRar8KeFJLw \
  --set delegateToken=MTFhZDBmODc0YTE4NGZkM2ZjMDc3MTg5YTk1ZGFkMWU= \
  --set managerEndpoint=https://app.harness.io/gratis \
  --set delegateDockerImage=harness/delegate:23.06.79707 \
  --set replicas=1 --set upgrader.enabled=false
