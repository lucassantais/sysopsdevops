#!/bin/bash

#Vérifiez si Helm est installé
if ! command -v helm &> /dev/null; then
    echo "Helm n'est pas installé. Installation en cours..."
    curl -LO https://get.helm.sh/helm-v3.7.0-linux-amd64.tar.gz
    tar -zxvf helm-v3.7.0-linux-amd64.tar.gz
    sudo mv linux-amd64/helm /usr/local/bin/helm
fi

#Vérifiez si Minikube est installé
if ! command -v minikube &> /dev/null; then
    echo "Minikube n'est pas installé. Installation en cours..."
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube-linux-amd64
    sudo mv minikube-linux-amd64 /usr/local/bin/minikube
fi

#Vérifiez si kubectl est installé
if ! command -v kubectl &> /dev/null; then
    echo "kubectl n'est pas installé. Installation en cours..."
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/
fi

#Reste du script pour installer Prometheus et Grafana...
#(voir le script précédent pour les étapes d'installation)
echo "Minikube, kubectl, Helm, Prometheus et Grafana ont été installés avec succès !"
echo "Accédez à l'interface web de Prometheus :"
minikube service prometheus-server-np
echo "Accédez à l'interface web de Grafana (utilisez le mot de passe admin) :"
minikube service grafana-np