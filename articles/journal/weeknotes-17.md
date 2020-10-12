---
title: Abonnements (Weeknotes #17)
date: 2020-10-12 19:15
description: Une semaine passée à (re)développer le système d’abonnements et de facturation de Flus.
illustration: images/flus-renew.png
---

### Ce que j’ai fait

La semaine passée a été réservée à bosser sur la fin de la migration du système
d’abonnement et de facturation de Flus. Je l’avais en effet d’abord développé
comme une extension à FreshRSS ([le premier service que j’ai ouvert](https://flus.io)).
En avril dernier, en proposant [la cagnotte](https://flus.fr/cagnotte) sur le
nouveau site, il m’a toutefois fallu en migrer une partie (le paiement et la
génération de la facture). Avec l’ouverture prochaine du nouveau service, il me
faut encore migrer l’ensemble, c’est-à-dire la gestion des adresses des
abonné‧es, la mémorisation de la date de fin de l’abonnement et la gestion des
rappels par courriel.

Le nouveau formulaire devrait être un peu plus élégant et agréable à utiliser
que le précédent.

![Une capture d’écran du nouveau formulaire de renouvellement de l’abonnement](images/flus-renew.png){.illustration .illustration--bordered}

J’ai donc dû créer un mécanisme de pseudo-compte qui sera partagé par les deux
services et centralisant les aspects d’abonnement à Flus. Le boulot est un peu
long (j’ai prévu 2 semaines de travail) et compliqué, mais je pense en voir le
bout d’ici demain. Je vais devoir être méticuleux pour migrer le service
FreshRSS, attendez-vous donc à une coupure dans la semaine.

### Ce que je ferai plus tard

Une part importante de ce nouveau système sera de pouvoir payer son abonnement
(mensuel) à partir de la cagnotte. J’ai voulu commencer à implémenter ce moyen
de paiement immédiatement, mais j’ai réalisé deux choses :

1. ça va demander un poil de préparation, je ne peux pas me lancer là-dedans
   tête baissée ;
2. j’ai envie que ce nouveau moyen de paiement soit disponible en même temps
   que le nouveau service ouvrira.

La cagnotte n’est donc pas une priorité aujourd’hui, je pourrai l’implémenter
en même temps que je travaillerai sur la nouvelle page d’accueil.
