export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

loki-prep:
	helm repo add grafana https://grafana.github.io/helm-charts
	helm repo update


loki-deploy:
	helm install loki grafana/loki  --version=6.31.0 -f ./loki/values.yaml

loki-upgrade:
	helm upgrade loki grafana/loki  --version=6.31.0 -f ./loki/values.yaml

loki-templates:
	helm template loki grafana/loki  --version=6.31.0 -f ./loki/values.yaml --output-dir /tmp/loki

loki-undeploy:
	helm uninstall loki


alloy-prep:
	helm repo add grafana https://grafana.github.io/helm-charts
	helm repo update

alloy-deploy:
	helm install alloy grafana/alloy --skip-crds --version=v1.4.0  -f ./alloy/values.yaml 

alloy-upgrade:
	helm upgrade alloy grafana/alloy --skip-crds --version=v1.4.0  -f ./alloy/values.yaml 

alloy-undeploy:
	helm uninstall alloy	