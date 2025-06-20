set -xg KUBECONFIG /home/toxick/.kube/config
kubectl completion fish | source
abbr --add k kubectl
