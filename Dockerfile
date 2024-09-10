FROM alpine:3.20.3

RUN apk add --no-cache curl git gettext tar && \ 
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.30.1/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    curl -fsSL -o helm.tar.gz https://get.helm.sh/helm-v3.15.4-linux-amd64.tar.gz && \
    tar -zxvf helm.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm && \
    rm -rf helm/
