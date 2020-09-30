# brinks-k8s
Project to test k8s horizontal pod autoscale

### requirements
* minikube
* kubectl
* docker
* watch command

### usage

* first, you need to start a minikube cluster on your machine
```
minikube start
```
* then, you deploy the app (this command create the hpa, deployment and service)
```
make deploy
```
* now you may create a pod to make requests
```
kubectl run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh
```
* inside this last pods created, start making GET requests to the k8s service
```
while true; do wget -q -O- http://nginx-service; done
```
*I recomend you to run these 2 commands again (with a different name to the pod) to see this working quickly*
* and now, *to see the magic*, just run
```
make get-pods
```
* and if you want see the hpa health you can run
```
make get-hpa
````
