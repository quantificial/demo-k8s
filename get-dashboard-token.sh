kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep kubernetes-dashboard| awk '{print $1}')
