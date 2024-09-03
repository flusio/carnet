---
title: Comment bien utiliser le journal de Flus
date: 2024-09-03 10:00
description: Parmi les outils fournis par Flus, le journal est un lecteur de flux Web qui sort de l’ordinaire.
---

Si vous êtes un ou une grande consommatrice de contenus sur Internet, il y a de fortes chances pour que vous vous soyez déjà sentie écrasée par la densité de vos fils d’actualités.

Flus est un outil spécialisé dans l’éditorialisation de votre veille.
Il vous permet de collecter, commenter et rechercher vos liens favoris en quelques clics.
C’est un complément à vos outils de veille traditionnels.
**[La version 1.0 de Flus est sortie hier](flus-un-point-zero.html).**

**Parmi les outils fournis par Flus, le journal est un lecteur de flux Web qui sort de l’ordinaire.**
Les flux Web — ou flux <abbr>RSS</abbr> / Atom — vous permettent de recevoir les nouvelles publications de sites Internet, de podcasts, ou encore de chaînes vidéos.
Plutôt que de devoir naviguer de site en site en quête de nouvelles publications, les flux vous permettent de tout recevoir en un seul endroit.

Dans cet article, je vous explique comment utiliser au mieux le journal de Flus pour suivre vos sources de contenus favorites sans crouler sous la quantité d’informations.
C’est également l’occasion de comprendre quelques choix de conception qui rendent ce lecteur de flux particulier.

**Cet article pré-suppose que vous possédez un compte Flus.**
Si ce n’est pas le cas, c’est donc la bonne occasion de jeter un œil à [flus.fr](https://flus.fr) pour en apprendre davantage et vous y créer un compte.

## Ajouter des flux, c’est pas si compliqué

Avant de commencer à utiliser le journal, rendez-vous dans l’onglet « Flux ».
C’est ici que vous allez pouvoir suivre de nouveaux flux Web.

**Cliquez sur « Ajouter un flux », puis dans le champ affiché, copiez-collez l’adresse d’un site.**
Cela peut être l’adresse d’un site de presse, comme `https://lesjours.fr`.
Les sites de presse ne sont pas les seuls à proposer des flux Web : vous pouvez également suivre des blogs, des chaînes Youtube ou encore des podcasts.
C’est à vous de décider quels sites vous souhaitez suivre.

![Une fenêtre dans Flus demandant l’adresse d’un site à suivre. L’adresse https://lesjours.fr est saisie.](images/flus-add-feed.webp)

Si Flus vous indique qu’aucun flux n’a été trouvé, il faut parfois rechercher la mention « <abbr>RSS</abbr> » ou « Flux <abbr>RSS</abbr> » sur le site concerné, et en copier le lien.

Il existe encore des tas de sites qui proposent des flux Web à suivre, mais il vous faudra parfois les chercher un peu.

## Collectez votre veille grâce au journal

Une fois vos flux ajoutés, rendez-vous dans l’onglet « Lecture », puis « Journal ».
**C’est ici que vous recevez les actualités des sites que vous suivez.**
Pour cela, rien de plus simple : cliquez sur « Rafraichir le journal ».

![Un journal vide dans l’onglet Lecture de Flus. Le bouton pour rafraîchir le journal est mis en évidence.](images/flus-news-empty.webp)

Flus récupère alors automatiquement la liste des 50 dernières publications de vos différents flux suivis.
Il ne vous reste plus qu’à cliquer sur chacune d’entre elles pour consulter leurs contenus.

_Petite astuce : le bouton « Rafraichir le journal » reste gris tant qu’il n’y a pas de nouvelles publications.
C’est un moyen simple de savoir si Flus a de nouveaux contenus à vous proposer._

## Vider le journal, un acte de sérénité

Une particularité de Flus et de vous forcer à vider le journal avant d’accéder à de nouvelles publications.
**Le but est de créer un sentiment de satisfaction en traitant les publications.**
Cela vous assure de ne pas les revoir tant que vous ne l’avez pas décidé.
En revanche, cela nécessite de pouvoir les traiter précisément et rapidement.

Pour vider le journal, plusieurs actions complémentaires sont possibles sur les publications :

- marquer comme lu : en marquant une publication comme lue, elle est ajoutée à votre liste de liens lus, pratique pour s’y référer plus tard.
- lire le lien plus tard : vous n’avez pas forcément le temps de lire un article de 5 000 mots, mais peut-être plus tard ? Le marquer à lire plus tard l’ajoute immédiatement à vos signets.
- retirer le lien : une publication ne vous intéresse pas ? La retirer du journal la fera simplement disparaître et vous ne la reverrez pas.

![Un journal remplit de deux liens issus du flux Web de France Info. Un menu est ouvert permettant de marquer comme lu, lire plus tard ou retirer les liens de la journée du 23 août.](images/flus-news-filled.webp)

Ces différentes actions sont possibles à différents niveaux du journal :

- au niveau des liens individuels.
- au niveau des flux : les liens issus d’un même flux sont regroupés, il est alors possible de tous les marquer en une fois.
- au niveau de la journée : de la même manière, les liens publiés un même jour sont regroupés et peuvent être retirés en une fois.
- au niveau global : pour vider le journal en une seule fois, rien de plus simple que le bouton « Actions » tout en bas du journal.

En règle générale, vous allez marquer quelques liens individuels comme lus, ou bien les marquer à lire plus tard.
Une fois ce premier tri fait, vous allez utiliser les actions groupées pour retirer tous les liens qui ne vous intéressent pas en une seule fois.
Vous pouvez évidemment vous y prendre différemment, Flus vous offre suffisamment de flexibilité pour cela.

## Éditorialiser votre veille

Plus haut, j’ai éludé une quatrième action possible : **celle de ranger un lien dans une ou plusieurs collections.**
Cette action n’est disponible que pour les liens individuels.
Le bouton d’action le plus à droite des liens permet en effet d’ouvrir une fenêtre pour sélectionner des collections dans lesquelles ranger vos liens.
Cette fenêtre permet par la même occasion d’ajouter un commentaire.
Ce commentaire peut se révéler particulièrement utile si vous comptez repartager votre veille sur d’autres réseaux plus tard.

**C’est cette phase d’éditorialisation qui va venir consolider votre veille, donc prêtez-y attention !**

![Une fenêtre de Flus proposant de sélectionner une ou plusieurs collections pour un lien. Une zone de commentaire est présente en bas de la fenêtre.](images/flus-news-collection.webp)

## Comment le journal filtre par temporalités

Par défaut, le journal ne récupère pas les publications datant de plus d’une semaine.
Le but est de faire un tri automatique des vieilles publications et d’éviter de vous surcharger de contenus.

Il est toutefois possible de modifier ce comportement flux par flux.
Il s’agit de l’une des fonctionnalités les plus puissantes de Flus.
**En effet, c’est ce mécanisme de « filtres temporels » qui va vous permettre de mieux supporter la densité de l’information.**

Lorsque vous êtes sur l’écran d’un flux, vous pouvez cliquer sur « Actions », puis « Régler pour le journal ».
Dans la fenêtre qui s’ouvre, vous pouvez choisir comment le journal doit se comporter pour ce flux :

- « Strict », les publications datant de plus de 24 heures ne sont pas récupérées (très utile pour les flux publiant beaucoup de contenus) ;
- « Normal », le comportement par défaut, les publications datant de plus d’une semaine ne sont pas récupérées ;
- « Tout » permet de recevoir absolument toutes les publications (dans le cas d’un flux dont vous ne voulez rien rater).

![Une fenêtre dans Flus permettant de choisir le filtre temporel à appliquer au flux du blog "Le carnet de Flus"](images/flus-feed-time-filters.webp)

## En résumé

Suivre l’actualité dans Flus pourrait se résumer ainsi :

1. ajoutez des flux à suivre ;
2. rafraichissez votre journal ;
3. lisez (ou non) les contenus proposés ;
4. triez les contenus, et ajoutez-y des commentaires si nécessaire ;
5. une fois tous les premiers contenus traités, retournez à l’étape 2.

Rien de bien sorcier, mais Flus prend soin de rapprocher la phase de collecte d’information avec la phase d’éditorialisation afin de vous simplifier la vie.
La particularité du journal étant que cette phase de collecte reste satisfaisante et tranquille vis-à-vis d’autres plateformes.

**Si le journal vous a convaincu, ou que vous pensez qu’il pourrait convaincre des personnes dans votre entourage, n’hésitez pas à en parler et partager cet article.**
Si ce n’est pas encore fait, vous pouvez également découvrir plus de fonctionnalités sur le site de Flus, et vous inscrire pour essayer.

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Se rendre sur flus.fr
    </a>
</p>
