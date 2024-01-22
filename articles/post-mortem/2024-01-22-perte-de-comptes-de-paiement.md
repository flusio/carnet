---
title: [post-mortem] Perte de comptes de paiement
date: 2024-01-23 14:15
description: Début janvier, des comptes de paiement ont été supprimés. Retours sur le problème.
---

En résumé : ce début janvier, des comptes de paiement ont été supprimés automatiquement à cause d’un bug dans la synchronisation entre les services. Aucune donnée n’a été perdue, les comptes ayant été rétablis à partir d’une sauvegarde récente.

Toutefois, si vous remarquez un souci, [n’hésitez pas à me contacter.](https://flus.fr/contact)

---

## Contexte

Flus est constitué de 2 services : rss.flus.fr (FreshRSS) et app.flus.fr (Flus).
La gestion des abonnements à ces deux services est centralisée à travers le site flus.fr.
C’est-à-dire que pour chaque compte sur l’un des deux services, un compte de paiement est créé sur flus.fr.
Les services communiquent chaque jour à flus.fr la liste des comptes qu’ils connaissent.
Lorsque plus aucun service n’est rattaché à un compte de paiement, celui-ci est supprimé automatiquement.
C’est-à-dire que si un utilisateur supprime son compte sur rss.flus.fr, son compte de paiement sera supprimé quelques jours plus tard sur flus.fr.

## Chronologie

- le 5 janvier, j’effectue une mise à jour de FreshRSS vers la version 1.23.1. Cette version apporte pas mal de changements importants en interne, ce qui casse le script qui fait la synchronisation avec flus.fr.
- entre le 5 janvier et le 19 janvier, rss.flus.fr ne notifie plus flus.fr. Ce dernier supprime les comptes de paiements qui existent uniquement sur rss.flus.fr au fur et à mesure.
- le 19 janvier milieu d’après-midi, je m’aperçois qu’un certain nombre de factures récentes sont rattachées au compte de service qui est utilisé en cas de suppression de comptes de paiement. Je réalise que quelque chose cloche (il est peu probable qu’une personne ait renouvelé son abonnement, puis ait supprimé son compte dans la foulée).
- le 19 janvier fin d’après-midi, je comprends le souci et [je corrige le bug.](https://github.com/flusio/xExtension-Flus/commit/68c1037e13f80ae3ef1bf8c4898796abaffcbda7) Je corrige également un problème qui fait que je n’ai pas reçu de mail d’erreurs plus tôt concernant le bug.
- le 22 janvier au matin, je réimporte les données supprimées à partir d’une sauvegarde du 7 janvier.

## Ce qui s’est bien passé

- la suppression des comptes de paiement n’empêchait pas l’utilisation du service, l’urgence était donc moyenne
- les sauvegardes de données étaient faites, disponibles et en bon état (je disposais d’une sauvegarde du 7 janvier, tandis que les données ont été supprimées à partir du 8 janvier)
- l’impact était relativement faible ; on parle de quelques centaines d’utilisateurs et personne ne m’a remonté le problème (donc potentiellement personne ne s’en est rendu compte)
- les paiements eux-mêmes n’étaient pas supprimés, seulement rattachés à un compte de service
- j’ai pu corriger très rapidement le problème une fois identifié

## Ce qui s’est moins bien passé

- je n’ai pas suffisamment bien testé un script pourtant critique avant de faire la mise à jour de FreshRSS
- je n’ai reçu aucune notification d’erreur, je me suis rendu compte du problème par hasard
- je n’ai pas mis en place certaines actions [suite au dernier incident important auquel j’ai fait face](https://flus.fr/carnet/2021-05-18-serveur-hs.html), qui m’auraient (peut-être) permis d’éviter celui-ci
- la politique de conservation des sauvegardes était un peu faiblarde, j’ai eu de la chance d’avoir une sauvegarde pile la veille de la suppression des données

## Conclusion

Cet incident m’a permis de relever un problème majeur au niveau de la surveillance des erreurs sur mes serveurs.
C’est en fait toute une stratégie que j’ai à repenser et mettre en place pour ne rater aucune erreur qui survient sur l’un de mes serveurs.

Pour équilibrer la balance, cet incident a aussi permis de me rassurer sur le fait que le plus important est en place : les sauvegardes des données sont faites et sont directement utilisables.
La documentation pour restaurer les données est également claire et m’enlève un poids dans ces situations.

Deux actions pour la suite :

- mettre en place une meilleure stratégie de supervision des erreurs (dans les grandes lignes : faire le tour de tous les scripts, tâches asynchrones et services qui peuvent générer des erreurs ; centraliser tout ça via Sentry probablement ; créer une procédure de bonnes pratiques sur le sujet)
- revoir la politique de conservation des sauvegardes pour l’augmenter légèrement
