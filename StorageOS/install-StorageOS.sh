helm repo add storageos https://charts.storageos.com
helm repo update

helm install storageos/storageos --name=storageos --namespace=storageos --set cluster.join="n1.local\,n2.local\,n3.local\,n4.local\,n5.local"

ClusterIP=$(kubectl get svc/storageos --namespace storageos -o custom-columns=IP:spec.clusterIP --no-headers=true)

echo "ClusterIP: $ClusterIP"

ApiAddress=$(echo -n "tcp://$ClusterIP:5705" | base64)

echo "ApiAddress: $ApiAddress"

kubectl patch secret/storageos-api --namespace storageos --patch "{\"data\": {\"apiAddress\": \"$ApiAddress\"}}"
