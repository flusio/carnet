---
title: Des choix – Weeknotes #13
date: 2020-09-14 11:37
description: Chaque semaine je fais face à des choix dans la conception de Flus. Cette semaine, une illustration par l’exemple.
---

## Ce que j’ai fait

La semaine dernière a été plus tranquille que la précédente. J’ai commencé par
réfléchir aux grandes lignes du processus d’« <em lang="en">onboarding</em> »
pour accueillir les nouve‧lles utilisateur‧ices. Je veux partir sur quelque
chose de très simple rappelant les raisons pour lesquelles utiliser Flus,
expliquant les quelques concepts du service (les liens, les collections, le
journal) et permettant de finir de compléter son profil. Je ne vais pas
développer ça tout de suite, **mais ça m’a permis d’identifier et de prioriser
les fonctionnalités manquantes.**

J’ai ensuite bossé sur un élément technique qui me manquait depuis le début :
la gestion des « <em lang="en">rollbacks</em> » de la base de données. Le
principe est de pouvoir annuler une mise à jour si celle-ci se passe mal. Ce
n’était pas bien compliqué à faire, mais c’est le genre de choses qui se trouve
bien souvent relégué au second plan malgré l’intérêt.

J’ai fini en travaillant à l’ajout des thématiques sur les collections. Cela
permettra d’obtenir des suggestions adaptées en fonction des centres d’intérêt
de chacun‧e. **La fonctionnalité s’est trouvée rapidement plus compliquée à
concevoir que prévu, l’occasion de voir à quels types de choix je peux me
trouver confronté régulièrement et comment je les résous.**

## Ce que j’ai décidé

Mon idée première était d’avoir un double système de catégories et de tags. Les
catégories auraient été définies par l’administrateur du service (moi),
limitées à une petite dizaine et partagées par tout le monde. Les tags quant à
eux auraient été librement choisis par les utilisateur‧ices. Ce double système
devait permettre des suggestions sur des sujets génériques tout en proposant de
creuser des thématiques très précises.

**J’ai néanmoins assez rapidement identifié que cela multipliait les concepts
inutilement puisque les catégories et les tags servaient le même but** : ranger
les collections et les liens par thématiques. Le choix a été ici initialement
de mixer les deux concepts : quelques grandes catégories partagées entre tout
le monde, mais la possibilité de créer ses propres catégories. Au passage, le
terme « catégorie » m’apparaissait trop technique, je l’ai donc troqué contre
« thématique ». Pas le mot de mes rêves, mais le mieux que j’ai trouvé (sa
traduction anglaise, <em lang="en">topic</em>, me convient en revanche beaucoup
mieux).

Ceci posé, j’ai réfléchi au modèle en base de données, mais surtout à
l’interface pour associer une collection à une ou plusieurs thématiques. Si
Maiwann m’avait fait une maquette pour la version initiale des catégories, elle
n’était pas adaptée à ce nouveau système. J’ai passé quelques heures de plus à
imaginer comment la modifier, mais **la nouvelle interface me semblait trop
complexe.**

Après une bonne nuit de repos, j’ai fini par réaliser qu’une première solution
tout à fait acceptable bien que loin de mon idéal serait de… revenir à la
solution initiale, mais sans les tags. **Le problème de cette solution est
qu’elle empêche les utilisateur‧ices de cibler des thématiques précises (ce qui
correspond au but du service) ; son avantage est de permettre une interface
simplifiée, plus facile à prendre en main et à développer.** Ça me permet
d’avancer, et l’interface aura l’occasion d’être améliorée plus tard si le
besoin s’en fait sentir.

Le dernier choix que j’ai eu à faire était de déterminer si les thématiques
devaient être rattachées aux liens, aux collections ou aux deux. Là encore mon
choix s’est porté sur ce qui me semblait être le plus simple à utiliser et à
développer : seules les collections seront associées à des thématiques. Celles
des liens pourront être déterminées par leur association à des collections.

Tout cela m’aura finalement pris la semaine, mais je suis prêt désormais à
développer la fonctionnalité. Et oui, **c’est pas forcément le développement
qui prend le plus de temps dans la conception d’un logiciel !**
