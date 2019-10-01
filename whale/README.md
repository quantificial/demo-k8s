### referenece

https://medium.com/@C.W.Hu/kubernetes-implement-ingress-deployment-tutorial-7431c5f96c3e

---

port forward

kubectl port-forward kubernetes-demo-pod 3000:3000

create deployment of blue and purple whale

create the ingress service

since our environment is bare-metal, we can use node port ingress implementation

define the hostname blue.demo.com and purple.demo.com in hosts table

access the application by 
- blue.demo.com:[node-port-of-ingress-service]
- purple.demo.com:[node-port-of-ingress-service]
