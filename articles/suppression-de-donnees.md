---
title: Suppression de données
date: 2022-02-15 19:58
description: Depuis ce soir, les comptes de paiement inutilisés sont supprimés automatiquement.
---

**J’ai activé ce soir la suppression automatique des « comptes de paiement ».** Je vous explique.

Flus, c’est 2 services finaux ([app.flus.fr](https://app.flus.fr) et [flus.io](https://flus.io)) en plus d’un service commun de paiement (sur [flus.fr](https://flus.fr)). Les comptes sur ce troisième service sont créés automatiquement lorsque vous vous inscrivez sur l’un des deux autres. C’est cette architecture qui permet de partager votre abonnement entre les deux services.

**Problème : que se passe-t-il si vous supprimez votre compte sur app.flus.fr ou flus.io ?**

Jusqu’à maintenant, les comptes de paiement étaient conservés ; pas chouette pour vos données personnelles ! Mais depuis ce soir, ces comptes sont automatiquement supprimés[^1].

[^1]: Après un délai de 2 jours. C’est juste pour mieux maîtriser le cas où la synchronisation des comptes se passerait mal entre les services.

Pour faire cela, les deux services finaux envoient _simplement[^2]_ la liste des comptes connus chez eux au service de paiement. Ce dernier connaît ainsi la liste des comptes toujours existants. Ceux qui manquent dans les deux listes peuvent ainsi être supprimés.

[^2]: Bien que la solution soit simple, le problème m’a tourmenté en novembre et décembre dernier. J’avais alors imaginé une solution qui me semblait fragile et ne fonctionnait que si tous les services tournaient sur la même machine physique. Ça ne m’allait vraiment pas. Finalement j’ai laissé traîner dans un coin de ma tête ; la solution m’est venue naturellement alors que je faisais mes courses :)

À noter également que depuis quelques mois, **je nettoie automatiquement les comptes non validés sur app.flus.fr.** Si vous aviez créé un compte il y a plus de 6 mois, mais que vous ne l’aviez pas validé, je ne possède plus votre adresse courriel.

Prochaine étape : supprimer automatiquement les comptes inactifs. C’est encore une autre paire de manches puisqu’il va falloir notifier les personnes au préalable.