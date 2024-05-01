kind:
	ctlptl apply -f local/kind-cluster.yaml
kind-destroy:
	ctlptl delete -f local/kind-cluster.yaml
crossplane:
	./local/install-crossplane.sh
crossplane-upgrade:
	helm upgrade cros kong/kong  -n kong -f ./local/kong-values.yaml
crossplane-destroy:
	./local/uninstall-crossplane.sh
destroy: kind-destroy
providers: 
	kubectl apply -f ./provider.yaml