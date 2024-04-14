#!/bin/bash

cd ~

# Mise à jour de l'OS
sudo apt-get update && apt-get upgrade -y

# Création d'une tâche de màj toutes les 8h
UPDATE_SCRIPT_CONTENT="#!/bin/bash
# Mettre à jour les paquets
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
"
echo "$UPDATE_SCRIPT_CONTENT" > "./auto-update-8h.sh"
sudo chmod +x "./auto-update-8h.sh"
0 */8 * * * ./auto-update-8h.sh


# Configuration Réseau
NETPLAN_FILE="/etc/netplan/00-installer-config.yaml"
rm "/etc/netplan/00-installer-config.yaml"
# Ajout de la configuration réseau au fichier
echo "network:" | sudo tee -a "$NETPLAN_FILE"
echo "  version: 2" | sudo tee -a "$NETPLAN_FILE"
echo "  renderer: networkd" | sudo tee -a "$NETPLAN_FILE"
echo "  ethernets:" | sudo tee -a "$NETPLAN_FILE"
echo "    eth0:" | sudo tee -a "$NETPLAN_FILE"
echo "      dhcp4: no" | sudo tee -a "$NETPLAN_FILE"
echo "      addresses: [192.168.1.186/24]" | sudo tee -a "$NETPLAN_FILE"
echo "      gateway4: 192.168.1.254" | sudo tee -a "$NETPLAN_FILE"
echo "      nameservers:" | sudo tee -a "$NETPLAN_FILE"
echo "        addresses: [8.8.8.8, 8.8.4.4]" | sudo tee -a "$NETPLAN_FILE"

# Appliquer la configuration Netplan
sudo netplan apply


# Installation de OpenSSH
sudo apt-get install openssh-server

# Installation de gnome et désactivation de la veille
sudo apt-get install gnome-shell
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# Installation d'OpenVPN
curl -O https://raw.githubusercontent.com/Angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
sudo ./openvpn-install.sh

# Ouverture sur la configuration d'un premier client SSH
sudo ./openvpn-install.sh

# Installation de tmux
sudo apt-get install tmux

# Installation de Minikube
sudo apt install curl wget apt-transport-https -y
egrep -q 'vmx|svm'/proc/cpuinfo && echo yes || echo no
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon
sudo adduser -a $USER libvirt && sudo adduser -a $USER libvirt-qemu
newgrp libvirt && newgrp libvirt-qemu
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin/
