kubectl proxy --port=8080

# http://localhost:8080/api/v1/proxy/namespaces/<NAMESPACE>/services/<SERVICE-NAME>:<PORT-NAME>/
# http://localhost:8080/api/v1/proxy/namespaces/default/services/my-internal-service:http/

# http://localhost:8080/api/v1/proxy/namespaces/default/services/my-deployment-service:3000/
