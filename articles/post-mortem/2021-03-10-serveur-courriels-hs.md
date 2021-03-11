---
title: [post-mortem] serveur de courriels hors-service
date: 2021-03-11 10:40
description: Retour sur l’incident du 10 mars concernant l’arrêt du serveur de courriels.
---

Suite à l’incendie d’hier chez [<abbr>OVH</abbr>](http://travaux.ovh.net/?do=details&id=49484&),
le serveur de courriels utilisé par Flus a été mis hors-service. Même si
l’impact a été minime pour le service, je voulais prendre le temps de revenir
sur l’incident et en tirer des conclusions. Je crois que cet exercice vous
permet également de savoir où vous mettez les pieds en vous inscrivant sur
[Flus](https://flus.fr). En plus, c’est assez plaisant à faire 😊

## Chronologie

- 1h50 : premier SMS du service de monitoring m’indiquant qu’un premier serveur
  ne répond pas
- 2h34 : second SMS pour m’indiquer qu’un second serveur (celui de courriels)
  ne répond pas (moi je dors à cette heure-ci hein 😴)
- 3h42 : Octave Klaba annonce l’incendie [sur Twitter](https://twitter.com/olesovhcom/status/1369478732247932929)
- 7h30 : je me lève et vois les SMS, je ne m’inquiète pas immédiatement
- 9h00 : je me connecte au <abbr>PC</abbr> et vois rapidement le message
  Twitter, je fais le lien avec les SMS reçus pendant la nuit
- 9h05 – 9h40 : vérification du fonctionnement des différents services que
  j’héberge, désactivation de la vérification par courriel de [flus.io](https://flus.io)
  car bloquant lors de la phase d’inscription
- 9h43 : annonce de l’incident sur [status.flus.io](https://status.flus.io/2021-03-10-courriels-hs.html)
  et relai sur les réseaux sociaux
- 9h59 : commande d’un nouveau serveur chez Hetzner pour réinstaller un serveur
  de courriels
- 10h00 – 11h40 : réinstallation du système avec Ansible, récupération et mise
  en place du backup du serveur de courriels
- 11h40 : premier test de fonctionnement du serveur ok
- 11h45 – 12h15 : changement configuration des DNS pour pointer vers le nouveau
  serveur, modification de la configuration des applications Flus pour utiliser
  celui-ci
- 12h15 : annonce que les services sont à nouveau opérationnels sur
  status.flus.io, et relai sur les réseaux sociaux
- 12h20 – 13h00 : modification DNS et configuration des autres applications que
  j’héberge personnellement
- 13h10 : je vais manger ! 🍴

## Ce qui s’est bien passé

- je n’ai pas paniqué (important ça !)
- j’ai immédiatement cherché à mitiger ce qui pouvait être cassé (ex. les
  inscriptions sur flus.io)
- du point de vue du service Flus, rien de critique n’a été touché
- je pense avoir communiqué comme il fallait, là où je le devais/pouvais
- la remise en service du serveur a été plutôt rapide
- le monitoring a fonctionné : malgré les courriels HS, j’ai reçu les SMS au
  bon moment
- le monitoring, bien que chez OVH, n’était pas installé à Strasbourg, ouf !
- les backups ainsi que mes scripts Ansible étaient opérationnels, pas de gros
  souci à déplorer
- les backups dataient de la nuit même, à 1h du matin, soit une heure avant la
  coupure du service
- ma documentation pour réinstaller le serveur était plutôt correcte et
  accessible (là aussi, sur un serveur OVH non impacté)

## Ce qui s’est moins bien passé

- je n’ai pas réagi en voyant les SMS : j’étais habitué pendant un temps à
  recevoir des faux-positifs et donc à prêter moins attention à ces alertes
  (clairement une erreur de ma part)
- je n’avais pas de procédure bien établie en cas d’incident, je me suis senti
  perdu au début
- la documentation technique pour relancer le service était éparpillée : les
  différentes parties se trouvaient là où elles devaient être, mais j’ai manqué
  d’un document pour faire le lien entre elles
- il y avait quelques petites erreurs dans la documentation : rien de grave,
  mais ça ajoute de la charge mentale au mauvais moment
- tout ça fait que j’ai été assez lent au démarrage, j’aurais pu être plus
  réactif
- je suis parti sur la solution de changer l’hôte au niveau DNS, alors que
  j’aurais pu faire pointer l’ancien hôte sur la nouvelle adresse IP (c’était
  plus ou moins assumé dans la précipitation, mais je voulais faire ce
  changement il y a quelque temps et c’était une occasion)
- l’installation du système n’est pas entièrement automatisé, notamment la
  création des utilisateurs et la configuration SSH
- j’ai eu de la chance que la documentation technique et le monitoring ne
  soient pas touchés

## Conclusion

Dans l’ensemble je crois m’en être assez bien sorti, la plupart de choses mises
en place ont fonctionné comme prévu. Il me reste toutefois quelques actions à
prendre :

- écrire une procédure en cas d’incident (je m’en occupe juste après la
  publication de ce post-mortem) et faire le lien entre les différentes parties
  de documentation technique
- faire en sorte que la documentation technique critique soit dupliquée,
  idéalement hors-ligne
- refaire une passe sur la documentation technique, exécuter les commandes dans
  l’ordre pour vérifier qu’elles sont correctes
- mieux me former à Ansible, améliorer mes scripts et compléter ce qui peut
  être automatisé
- augmenter la fréquence des backups en fonction de la charge système
- considérer la réplication du service de monitoring
- changer mon « conditionnement mental » pour ne plus ignorer les SMS venant du
  monitoring
- en cas de faux-positifs, il faudra que je corrige immédiatement l’erreur pour
  qu’elle n’arrive plus (ce qui a déjà été fait pour les faux-positifs
  précédents)
