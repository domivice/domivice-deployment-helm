# Install Domivice Infra

1. helm install domivice-infra domivice-infra --values domivice-infra/values.yaml --namespace domivice-infra --create-namespace 

2. helm upgrade domivice-infra domivice-infra --values domivice-infra/values.yaml --namespace domivice-infra

# Install Identity Server

- kubectl create secret docker-registry default-harbor-image-pull-secret --docker-server=<your-registry-server> --docker-username=<your-name> --docker-password=<your-pword> --docker-email=<your-email>

1. helm install identity-server-dev identity-server --values identity-server/values-dev.yaml --namespace domivice-dev --create-namespace --set api.enabled=false

2. helm upgrade identity-server-dev identity-server --values identity-server/values-dev.yaml --namespace domivice-dev