---
title: Améliorations dans le processus de renouvellement
date: 2020-12-21 15:45
description: J’ai pris quelques heures la semaine dernière pour apporter des améliorations au processus de renouvellement de l’abonnement Flus.
illustration: images/flus-account.png
---

Le renouvellement de votre abonnement à Flus est central dans votre expérience
du service (ainsi que pour sa survie 😛). Il avait déjà subi une première
refonte [en octobre](https://flus.fr/carnet/weeknotes-17.html) pour permettre
de centraliser les informations d’abonnement entre les services [Flus 1](https://flus.io)
et [Flus 2](https://flus.fr). Avec l’ouverture de Flus 2 est également arrivé
le renouvellement via [la cagnotte](https://flus.fr/cagnotte).

Tous ces changements accumulés étaient un peu fastidieux, mais nécessaires. Ils
ne bénéficiaient toutefois pas d’autant de recul, et donc de finitions, que le
reste. C’est sans grande surprise que quelques personnes m’ont fait remarquer
que le parcours utilisateur n’était pas clair. **J’ai pris quelques heures la
semaine dernière pour apporter des améliorations sur la base de ces retours.**

---

Une chose à savoir est que je demande une adresse postale pour pouvoir établir
les factures. C’est donc une condition préalable pour pouvoir vous permettre de
renouveler. Le formulaire demandant de saisir une adresse postale est
maintenant affiché immédiatement lors de la première demande de renouvellement
au lieu d’être caché derrière un lien. L’information expliquant pourquoi j’ai
besoin de cette adresse est également affichée tout en haut de la page, rendant
le formulaire moins surprenant.

**_Edit du 02 avril 2021 : l’adresse postale est désormais optionnelle !_**

La deuxième grande modification concerne l’accueil du compte de paiement. J’ai
voulu tout revoir pour la rendre moins austère et mieux mettre en avant la
navigation. **Elle est à mon avis plus lisible ainsi.**

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flus-account.png" alt="Capture d’écran affichant le nouvel accueil du compte de paiement.">
</div>

Cela m’a amené à déplacer le bouton pour activer le rappel par courriel
directement au sein des formulaires de renouvellement, sous forme de cases à
cocher. Le retour aux applications (Flus 1 ou Flus 2) est également revu
puisqu’il n’existe plus qu’un bouton unique qui prend en compte l’application
d’où vous venez.

Le dernier changement concerne la formulation des paiements qui n’ont pas
encore été marqués comme « payés ». En effet, entre le moment où vous payez chez le
prestataire de paiement, Stripe, et le moment où vous revenez chez moi, Stripe
ne m’a pas forcément encore notifié de la validation. J’affichais alors que
le paiement était « non payé » (car effectivement, de mon côté, il ne l’était
pas !) Évidemment, de votre côté cela apparaissait comme un problème vu que
vous veniez de payer sans qu’on ne vous indique une erreur ! J’ai donc
simplement reformulé ce libellé à « en attente » qui indique mieux l’état de
votre paiement.

---

**C’est donc toute une série de petits changements que j’ai appliqué pour
rendre le processus de renouvellement de votre abonnement plus agréable.** Il
reste sans doute des choses à améliorer alors n’hésitez pas [à m’indiquer
lorsque vous rencontrez des problèmes](https://flus.fr/contact). J’ai déjà créé
une vingtaine de tickets la semaine passée suite à vos retours. Plus un
problème m’est remonté, plus il prend de l’importance et a de chances d’être
corrigé rapidement.
