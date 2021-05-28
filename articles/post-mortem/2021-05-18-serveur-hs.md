---
title: [post-mortem] serveur hors-service
date: 2021-05-19 10:38
description: Retour sur l’incident du 19 mai concernant l’arrêt du serveur.
---

Hier en fin d’après-midi, un incident est survenu sur le serveur hébergeant les
services [Flus 1](https://flus.io) et [Flus 2](https://flus.fr). Les services
ont tourné en mode dégradé de 16h35 à 17h10, puis ont été arrêtés jusqu’à
18h10.

Dans la lignée du [précédent post-mortem](2021-03-10-serveur-courriels-hs.html),
je vous explique dans cet article ce qu’il s’est passé.

## Symptômes

J’ai observé les premiers symptômes aux alentours de 17h : je n’arrivais plus à
ajouter un lien à mes signets (Flus 2) via l’extension navigateur. En tentant
d’accéder à l’application directement, il semblait également qu’elle ne
chargeait plus. Du côté de Flus 1, le chargement se passait bien, mais je n’ai
pas tenté de modifier quoi que ce soit (i.e. pas d’opération en écriture).

## Chronologie

- 16h35 : 2 jobs asynchrones de Flus 2 tentent de synchroniser des données
  externes, mais restent bloqués
- 17h00 : je tente d’ajouter un lien à mes signets, sans succès
- 17h00 - 17h10 : je tente de comprendre les symptômes, relance quelques
  services dont PostgreSQL qui ne redémarre pas, je découvre que le volume
  contenant ses données n’est plus visible par le serveur
- 17h10 - 17h17 : je rédige [un billet d’incident](https://status.flus.io/2021-05-18-serveur-hs.html)
  sur status.flus.io, stoppe quelques services, redirige les services Web
  principaux vers ce billet, puis diffuse l’information sur les réseaux sociaux
- 17h17 - 17h50 : j’essaye de comprendre la disparition du volume de données :
  il est en fait toujours présent sous `/dev/sdb`, mais je ne peux plus le
  monter, même manuellement (ça semble tourner dans le vide). Des erreurs
  louches venant du kernel apparaissent dans les logs. Je vérifie également la
  présence de backups, le dernier remonte à 14h25 ce qui est rassurant
- 17h43 : je contacte le support Hetzner pour savoir si le problème pourrait
  venir de leur côté
- 17h55 : je mets à jour le billet d’incident avec les nouvelles informations à
  ma disposition
- 18h00 - 18h10 : je réalise finalement que le problème pourrait venir d’une
  corruption du système de fichiers et je répare ça avec la commande `fsck`. Le
  montage manuel du volume réussit, je lève donc les redirections des services
  Web et relance les services arrêtés
- 18h09 : je renvoie un mail au support de Hetzner pour les alerter que le
  problème est résolu
- 18h15 : je mets à jour le billet d’incident et diffuse sur les réseaux
  sociaux
- lendemain, 08h14 : réponse de Hetzner pour me dire qu’ils ferment le ticket
  d’incident

## Ce qui s’est bien passé

- je suis rapidement remonté à l’origine du problème, même si la raison
  concrète a pris plus de temps à émerger
- la procédure que j’avais rédigée suite au précédent incident, aussi simple
  soit-elle, m’a été d’une grande aide
- l’incident est survenu en journée, à un moment où j’utilisais moi-même Flus
- les backups récents m’ont permis de me rassurer sur le fait que peu de
  données seraient perdues dans le pire des cas
- le problème a été corrigé sans perte de données, dans un délai raisonnable
- j’ai pris mon temps sans paniquer pour éviter de faire des bêtises

## Ce qui s’est moins bien passé

- le monitoring ne m’a été d’aucune aide cette fois-ci, j’ai seulement reçu des
  alertes pour me prévenir que les services étaient redirigés
- le fait que Flus 1 marche en apparence, mais pas Flus 2, m’a perturbé : il
  s’agissait simplement que les données étaient encore accessibles en lecture
  et/ou que la page était encore en cache
- les jobs asynchrones de Flus 2 qui ont échoué n’ont pas pu logguer l’erreur
  car elles le font en base de données
- les logs pertinents du kernel étaient incompréhensibles
- je crois que c’était la première fois que je faisais face à un problème de
  système de fichiers corrompu, je n’ai donc pas pensé rapidement que ce
  pouvait être le problème
- il y avait quelques petites incohérences d’ordre dans ma procédure
  d’incidents
- la réponse de Hetzner n’est arrivée que le lendemain : il ne s’agit pas de
  critiquer leur temps de réponse car il correspond au niveau de support que je
  paye, par contre il est bon de se rappeler qu’en cas de problème de leur
  côté, la réponse peut prendre plusieurs heures à arriver
- je me suis senti perdu pour savoir ce que je devais faire une fois Hetzner
  contacté : attendre leur réponse ? prendre un second volume pour y
  réinstaller dessus les données issues du backup ?

## Conclusion

Il s’agissait du second incident relativement important auquel je fais face en
quelques mois. Je crois que cette fois-ci encore les choses se sont plutôt bien
passées, en partie grâce aux enseignements de la fois précédente (procédure
simple existante, fréquence des backups augmentée, documentation technique
améliorée). Pour faire encore mieux la prochaine fois, voici quelques points
d’amélioration :

- le système de monitoring est encore incomplet : j’aimerais pouvoir détecter
  les problèmes précis survenant au niveau du système de fichiers, mais
  également détecter les problèmes d’accès à la base de données, ou encore les
  erreurs applicatives
- la procédure d’incidents a encore besoin d’être améliorée : pas grand-chose à
  faire en l’occurrence, c’est surtout une affaire d’ordre et de documenter
  comment rediriger les services pour n’avoir aucune question à me poser la
  prochaine fois
- la procédure devrait conseiller de tester l’état des différents services plus
  en profondeur
- il reste un problème à corriger avec les jobs asynchrones de Flus dont les
  erreurs sont loggués uniquement en base de données : si la base est
  inaccessible, pas de logs
