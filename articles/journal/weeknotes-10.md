---
title: Weeknotes #10 (cycle 7)
date: 2020-08-24 11:00
description: Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration:images/flusio-news.png
---

Tiens, personne n’est venu écrire ici pendant que je me la coulais douce ? Peu
importe, il est temps que je rattrape ces 3… heu, 4 dernières semaines de
weeknotes. Je reprendrai ensuite un rythme plus régulier.

## Ce que j’ai fait

J’ai sorti 2 versions depuis [la dernière note](weeknotes-9.html), dans
laquelle j’indiquais que j’allais travailler plus tranquillement pendant l’été
(ce que j’ai effectivement fait).

La v0.6 a ajouté la possibilité de commenter et partager des liens en public.
Ce qui donne par exemple pour [ce lien](https://app.flus.fr/links/55f82fa9ad791fe12eae93135c45ace6),
l’interface suivante :

![Interface de l’écran d’un lien permettant de commenter et partager](images/flusio-comment-and-share.png){.illustration .illustration--bordered}

On voit que l’interface commence à ressembler à quelque chose en proposant de
plus en plus de fonctionnalités.

Sur la capture précédente, on voit également l’arrivée d’un onglet « Journal ».
Celui-ci est arrivé avec la v0.7 sortie la semaine dernière. Le journal
permettra de sélectionner intelligemment des articles à lire depuis vos
signets, les collections que vous suivez ou des articles suggérés, en fonction
de votre temps disponible. L’idée sera de vous permettre de configurer
l’algorithme de suggestion et sera la pierre angulaire du futur service.
Actuellement, il s’agit d’une version très simplifiée : elle se contente de
sélectionner environ 1h de lecture depuis vos signets.

Le journal ressemble pour l’instant à la capture suivante, mais il va très
certainement évoluer dans les prochains jours.

![Interface de Flus montrant 3 liens différents avec la possibilité de les voir, de les marquer comme lus, ou de les masquer](images/flusio-news.png){.illustration .illustration--bordered}

Enfin, j’ai quelque peu expérimenté dans des domaines que je ne connaissais pas
ou très peu en créant une extension pour navigateurs (permettant de mettre
facilement les liens de côté) et une application pour Android (en fait une
simple encapsulation de l’application Web). Ces deux applications vont
toutefois nécessiter encore un peu d’amour avant d’être publiées officiellement.

## Ce qui va changer

Aujourd’hui, si j’ai une première coquille fonctionnelle (que j’utilise
quotidiennement), il me reste à peaufiner beaucoup de petits détails.
L’avantage des petits détails, c’est que cela relève toujours plus ou moins du
facultatif et peut être fait « plus tard ». J’avais toutefois encore une grosse
fonctionnalité à ajouter : celle introduisant le système de « communautés »,
qui me semblait essentielle.

L’été m’a donné l’occasion de repenser mes priorités et les fonctionnalités à
introduire pour la sortie de la bêta. J’ai ainsi décidé de simplifier les
communautés au maximum en proposant simplement un système de simili-suivi entre
utilisateur·ices. Cela autorisera simplement les personnes à venir commenter
sur nos propres liens publics.

## Là où j’ai parlé

À la fin du mois de juin, j’ai été interviewé pour le podcast « Le Libre Au
Quotidien ». L’épisode est sorti il y a quelques jours et [vous pouvez le
retrouver ici](https://lelibreauquotidien.fr/2020/08/17/podcastlibre-4-vuejs-invitemystere-guacamole-linuxmint-lego/)
(à partir de 11:50 pour les impatient·es).

C’était la première fois que je me prêtais au jeu du podcast et il y a plein de
choses que j’aurais voulu présenter différemment, mais enfin, c’était
globalement une bonne expérience. J’apprendrai à mieux structurer mon discours
la prochaine fois !
