---
title: Quoi de neuf en avril ?
date: 2025-05-01 10:00
description: Ce mois-ci : l’extension navigateur avance, un design system fait son apparition, la migration du serveur de mails est terminée, et la gestion du support passe sur Bileto.
---

Je publie chaque mois un article pour résumer mon activité mensuelle.
Ce mois-ci, pas mal de choses : la base technique de l’extension navigateur est posée, un <em lang="en">design system</em> fait son apparition, la migration du serveur de mails est terminée, et la gestion du support passe sur Bileto.
Rien que ça !

Pour rappel, Flus est un outil de veille en ligne permettant de collecter, ranger, commenter et partager des liens.
Il vous accompagne dans l’éditorialisation de votre veille.

## Le travail de fond

### La base technique de l’extension navigateur est posée

Le gros boulot de cette année consiste à remettre à plat l’extension navigateur de Flus.

J’ai pu avancer ce mois-ci sur la base technique en validant les technologies à utiliser.
La future version permettra de faire beaucoup plus de choses que l’actuelle (comme ajouter des notes à un lien, ou le ranger directement dans des collections).
Par conséquent, la complexité technique va elle aussi augmenter ; **il me fallait donc être sûr de faire les bons choix.**

Je ne rentre pas dans le détail de ces choix, les plus curieux et curieuses iront voir [le dépôt du projet](https://github.com/flusio/flus-browser/tree/new/redesign).

### Un <em lang="en">design system</em> fait son apparition

J’ai travaillé sur un début de <em lang="en">design system</em>.
Il s’agit d’un ensemble de composants pour construire les interfaces des différents sites et applications de Flus.

Ce <em lang="en">design system</em> a été tiré du chouette travail d’[Elina](https://fr.linkedin.com/in/elina-bufferne) pour la refonte du site [flus.fr](https://flus.fr).
J’ai étendu son travail pour disposer de palettes de couleurs complètes, et notamment d’un jeu de couleurs pour un futur mode sombre (oui oui 👀).

**Je compte maintenant l’utiliser pour l’extension navigateur puis, à terme, également pour l’application Web.**
Le but est d’avoir un design cohérent entre toutes les applications et le site.
Tout ça va cependant encore demander beaucoup de boulot avant d’en arriver là !

Vous pouvez en avoir un aperçu préliminaire [sur cette page](https://flusio.github.io/flus-design/) (attention, ce n’est qu’une page de démonstration qui me sert à retrouver facilement les bonnes classes et variables <abbr>CSS</abbr> notamment).

### La migration du serveur de mails est terminée

**Bonne nouvelle : j’en ai fini avec la migration de mon serveur de mails !**

Pour rappel, j’hébergeais mon propre serveur de mails depuis plus de 10 ans.
Néanmoins, la charge devenait trop pénible avec des emails tombant régulièrement dans les spams de mes destinataires, et un travail de maintenance que je n’avais plus envie de mener.

J’en ai donc terminé avec cette migration :

- les emails transactionnels sont envoyés grâce à [Scaleway](https://www.scaleway.com) depuis février ;
- et les emails « standards » sont désormais hébergés chez [Infomaniak](https://www.infomaniak.com).

Ça a été un gros travail de préparation et de planification, je suis donc très content que tout ce soit passé de manière invisible pour vous.

### La gestion du support passe sur Bileto

Petit changement pour les personnes qui me posent des questions depuis [le formulaire de contact](https://flus.fr/contact) par exemple.
**Les demandes seront désormais grâce au logiciel [Bileto](https://github.com/Probesys/bileto)[^1],** que je développe par ailleurs sur mon second mi-temps.

[^1]: En réalité [une version forkée](https://github.com/flusio/bileto) dont les modifications seront amenées à être intégrée au dépôt d’origine.

Je gérais jusqu’à maintenant les demandes de support exclusivement par email, mais ce n’était pas toujours très satisfaisant.
Je voulais par exemple assurer un meilleur suivi des demandes « en cours » et les dissocier des demandes déjà résolues.
Je voulais également pouvoir les catégoriser pour pouvoir plus facilement revenir sur des demandes passées par exemple.

Comme j’ai travaillé sur Bileto pendant plus de 2 ans, je savais qu’il répondrait très bien à mes besoins.
C’est aussi l’occasion de l’éprouver un peu plus, pour ensuite pouvoir encore l’améliorer.

## Si vous l’avez raté

J’ai publié un article ce mois-ci pour expliquer comment importer ses flux Web depuis un autre service que Flus à partir d’un fichier <abbr>OPML</abbr>.
**C’est une très bonne manière de tester le service en conditions réelles.**
L’article est d’ailleurs tombé à point nommé puisque Netvibes, un agrégateur de flux historique, a annoncé ce mois-ci qu’il fermerait ses portes le 2 juin prochain.
L’occasion de venir tester Flus ?

Vous pouvez lire l’article ici : « [Importez vos flux Web à partir d’un fichier OPML](importez-depuis-un-fichier-opml.html) ».

## Le saviez-vous ?

_Chaque mois, je partage sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr)) une astuce pour utiliser Flus.
Je profite de ces articles mensuels pour les repartager sur le blog.
D’ailleurs en parlant de gestion de vos données…_

Il vous est possible d’exporter une archive de vos données Flus. L’objectif est de vous permettre de quitter la plateforme (ça peut arriver !) sans devoir abandonner toute votre veille durement construite.

Pour cela, ouvrez le menu utilisateur en cliquant sur votre avatar, puis « Compte & données » et « Télécharger vos données ». Générez une nouvelle archive, puis téléchargez-la.

Plus d’informations dans cet article de 2021 : [Téléchargez vos données](telechargez-vos-donnees.html).

## Conclusion

**Le mois d’avril a été particulièrement chargé puisque j’ai clôturé tout un tas de sujets qui prenaient de la place dans mon quotidien.**
Je vais désormais avoir un peu plus de temps à accorder au développement de l’extension navigateur qui est également un sacré morceau.

Dans un monde parfait, je pourrais dédier encore plus de temps à Flus, et pour cela j’ai besoin que le projet se fasse connaître auprès de plus de monde.
N’hésitez donc pas à parler de Flus autour de vous, notamment à des personnes qui font de la veille au quotidien !

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Accéder au site de Flus
    </a>
</p>
