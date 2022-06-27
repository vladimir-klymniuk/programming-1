How to add ability to pull secret

    kubectl create secret generic regcred \
        --from-file=.dockerconfigjson=<path/to/.docker/config.json> \
        --type=kubernetes.io/dockerconfigjson


kubectl create secret docker-registry gitlab-auth
        --from-file=.dockerconfigjson= \
        --type=kubernetes.io/dockerconfigjson