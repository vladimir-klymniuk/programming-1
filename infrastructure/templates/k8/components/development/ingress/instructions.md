## Generate ca
#### https://medium.com/avmconsulting-blog/how-to-secure-applications-on-kubernetes-ssl-tls-certificates-8f7f5751d788

```bash
    openssl genrsa -out ca.key 4096
```

```bash
    openssl req -x509 \
        -new -nodes \
        -days 365 \
        -key ca.key \
        -out ca.crt \
        -subj "/CN=dev.domain.boats"
```

```bash
    kubectl create secret tls dev-tls-secret \
    --key ca.key \
    --cert ca.crt
```

```
    kubectl get secrets/dev-tls-secret
```

```
    kubectl describe secrets/dev-tls-secret
```

```yaml
---
    apiVersion: v1
    data:
        tls.crt: "base64 encoded cert"
        tls.key: "base64 encode key"
    kind: Secret
    metadata:
        name: dev-tls-secret
        namespace: development
    type: kubernetes.io/tls
```

```bash
    kubectl apply -n development -f tsl.yaml
```

```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
    ...
spec:
    rules:
     ..
    tls:
      -
        hosts:
          - dev.domain.com
        secretName: dev.tls-secret
```