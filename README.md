## build docker using Dockerfile
docker build .

## run the docker
docker run -p 3000:3000 -it <<image-id>>

## tag the image
docker tag <<image-id>> foosi/docker-demo


## push to docker hub
docker push foosi/docker-demo

## push image
docker pull nginx



## k8s pod
one pod contains more than one container


# define pod by using yaml


# use k8s to run the container
kubectl create -f my-first-pod.yaml 


# check pods
kubectl get pods


# check pods information

kubectl describe pods <<pods>>

# expose the port

kubectl port-forward my-pod 8000:3000 

# expose the service
kubectl expose pod my-pod --type=NodePort --name=my-pod-service

# check service
kubectl get services


# attach to the pod
kubectl attach <<pod-name>> -i


# exec command
kubectl exec <pod> -- ls


# check label
kubectl get pods --show-labels


# apply label
kubectl label pods my-pods version=latest

# create pod for checking another container
kubectl run -i --tty alpine --image=alpine --restart=Never -- sh

apk add curl

# need to know the different of cluster ip and the pod ip


# node is the physical machine or virtual machine

check node 
kubectl get nodes

# architecture

client => load balance => node / node / node / ... => iptable => [kubelet | kube-proxy ] / pod1 - container


kubelet is node agent and use to communicate with master node
kube-proxy is used to update iptable with the latest pod information


# check rc
kubectl get rc

# scale rc
kubectl scale --replicas=4 -f ./my-replication-controller.yaml

# use deployment instead of directly using rc or rs
# check deployment

kubectl describe deployment <deployment-id>

kubectl get all

# expose deployment
kubectl expose deploy hello-deployment --type=NodePort --name=my-deployment-service

# upgrade image
# upgrade the image in the hello-deployment
kubectl set image deploy/hello-deployment my-pod=zxcvbnius/docker-demo:v2.0.0

# check rollout status
kubectl rollout status deploy hello-deployment

# use edit to edit the image
kubectl edit deploy hello-deployment


# check rollout history
kubectl rollout history deploy hello-deployment

# undo
kubectl rollout undo deployment hello-deployment

