deploy:
	kubectl apply -f nginx.yaml
	kubectl apply -f nginx-hpa.yaml
	kubectl expose deployment nginx --type=LoadBalancer --name=nginx-service

delete-all:
	kubectl delete deploy nginx
	kubectl delete service nginx-service

get-pods:
	watch kubectl get pods

get-hpa:
	watch kubectl get hpa
