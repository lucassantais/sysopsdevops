if ! command -v minikube &> /dev/null; then
    echo "Minikube n'est pas installé. Installation en cours..."
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube-linux-amd64
    sudo mv minikube-linux-amd64 /usr/local/bin/minikube
fi