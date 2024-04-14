if ! command -v helm &> /dev/null; then
    echo "Helm n'est pas installé. Installation en cours..."
    curl -LO https://get.helm.sh/helm-v3.7.0-linux-amd64.tar.gz
    tar -zxvf helm-v3.7.0-linux-amd64.tar.gz
    sudo mv linux-amd64/helm /usr/local/bin/helm
fi