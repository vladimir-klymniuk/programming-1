# GCE-GKE
# Install instruction https://kubernetes.github.io/ingress-nginx/deploy/#gce-gke

```text
    First, your user needs to have `cluster-admin` permissions on the cluster. This can be done with the following command:
```

```bash
    kubectl create clusterrolebinding cluster-admin-binding \
        --clusterrole cluster-admin \
        --user $(gcloud config get-value account)
```

### Then, the ingress controller can be installed like this:
```
    kubectl apply -f deploy.yaml
```