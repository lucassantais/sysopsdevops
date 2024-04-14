# sysopsdevops
Rapport du projet Devops Atelier Méthodes Agiles de : Lucas Santais, Aurelien Ternon, Evan Michon, Julien Sebastianis, Jean Tourand.

**_Rapport du projet_**
 

Voici les différentes étapes de notre travail,

Ce projet vise à mettre en place une infrastructure serveur complète pour supporter une application Web. L'infrastructure comprend un serveur Ubuntu avec une interface graphique Gnome, un service SSH, VPN, un serveur Grafana pour la visualisation des métriques, un serveur Prometheus pour la collecte des métriques système et applicatives
nous trouverons ci joint plusieurs scripts pour automatiser le déploiement de tous ces services. Il faudra bien penser a éxécuter Helm en premier avant de déployer les autres scripts.
Il y a un script qui permet de tout refaire d'un coup, il englobe toutes les installations de services ("Script_englobant_tout_grafana_prometheus.sh")

**Fonctionnalités**

Configuration d'un serveur Ubuntu avec une interface graphique Gnome pour une utilisation conviviale.
Installation et configuration d'un service VPN Open VPN pour assurer la connectivité au serveur depuis notre domicile.
Mise en place d'un serveur Grafana pour la visualisation des données de métriques.
Configuration d'un serveur Prometheus pour la collecte des métriques système et applicatives.


Cloner le dépôt GitHub vers votre machine locale :
git clone https://github.com/"votre-utilisateur"/@projetsysposdevops

**Organigramme** retraçant toutes les étapes de notre travail et les solutions que nous avons trouvé afin de contourner nos problèmes.


![Image](https://github.com/users/lucassantais/projects/1/assets/154605249/73b90d6c-1538-4b99-8b47-d50ef073614e)



**Partie TMUX**



![Image](https://github.com/users/lucassantais/projects/1/assets/154605249/a29cdbb6-0b53-4de2-9214-b5bae88e993d)



![Image](https://github.com/users/lucassantais/projects/1/assets/154605249/b9eefef7-aa09-48cd-a68f-66975229e6ff


![Grafana_logo svg](https://github.com/lucassantais/sysopsdevops/assets/154605249/ad33ab45-1684-4609-8985-62cf2d39ddf7)
![png-clipart-flame-logo-prometheus-logo-icons-logos-emojis-tech-companies](https://github.com/lucassantais/sysopsdevops/assets/154605249/ad270ebc-24b9-4363-b90d-989a9ca55a19)

