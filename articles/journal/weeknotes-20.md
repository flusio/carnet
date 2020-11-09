---
title: Améliorations UX, extension et Confin’atelier (Weeknotes #20)
date: 2020-11-09 16:00
description: Deux semaines pour le prix d’une, j’y parle des améliorations faites, de l’extension navigateur et des retours que j’ai reçus jusqu’ici.
illustration: images/flusio-news-3.png
---

Dans cette Weeknotes : 2 semaines pour le prix d’une. C’est cadeau, mais pas
plus long que d’habitude.

## Journal et améliorations

La semaine du 26 au 30 octobre a été passée à corriger des tas de petits
détails liés principalement à l’expérience utilisateur. J’ai notamment
complètement revu la présentation du journal en me basant sur les problèmes que
je rencontrais au quotidien.

![Capture d’écran du journal présentant 3 articles à lire, un menu et ouvert pour retirer un article du journal, et un bouton pour recycler le journal se trouve tout en bas](images/flusio-news-3.png){.illustration .illustration--bordered .illustration--centered}

On peut voir notamment que les articles sont présentés sous forme de cartes
illustrées (pour réutiliser le même concept que dans le reste de Flus), que les
actions sont présentées différemment et sont plus explicites. Le bouton pour
« recycler » le journal fait également son apparition pour retirer tous les
articles en même temps.

Il s’agit de la deuxième grosse amélioration du journal depuis le début, et
j’ai parlé de la précédente dans la [Weeknotes #11](weeknotes-11.html) (vous
pourrez d’ailleurs y comparer les interfaces). Il y aura encore sans doute de
petites corrections à faire, mais je sens que je suis sur la bonne voie.

Durant les jours qui ont suivi, j’ai également pris le temps de corriger plein
de détails que ce soit dans la formulation de certaines phrases, l’ajout de
pointes de couleurs et de dégradés, l’homogénéisation de formulaires,
l’amélioration de la lisibilité de certaines parties de l’application, etc.

## Extension navigateur

La semaine dernière était dédiée au développement de l’extension navigateur
pour Flus. J’avais déjà développé une première coquille (voir la [Weeknotes #10](weeknotes-10.html)),
mais comme je le disais alors, elle avait besoin d’un peu d’amour.

L’extension permet désormais de se connecter à Flus (si on ne l’est pas déjà),
d’accéder rapidement au journal, signets et collections. L’ajout des liens aux
signets se fait maintenant automatiquement (elle se contentait auparavant de
rediriger vers la page d’ajout de lien). Elle est également capable d’afficher
si le lien de la page courante est déjà parmi les signets. Courte vidéo pour
montrer son fonctionnement :

<video controls class="illustration illustration--bordered illustration--centered">
    <source src="videos/flusio-browser-1.webm" type="video/webm">
    <source src="videos/flusio-browser-1.mp4" type="video/mp4">
</video>

Simple, elle aura l’occasion de s’étoffer plus tard. Je vais pour l’instant me
consacrer à un morceau plus important.

## Refonte du site Web

Je me trouve dans la dernière ligne droite avant l’ouverture de décembre, il
est donc temps que je bosse sur le site qui servira de porte d’entrée dans le
« _Flus-universe_ ». Je profite de cette période pour affiner le public auquel
je veux m’adresser, et donc ma stratégie. Je n’en dirai pas plus, rendez-vous
en décembre 😉

Je vais également profiter de cette période pour brancher [la cagnotte](https://flus.fr/cagnotte)
au système de paiement, dernière brique manquante à la refonte entamée en avril
dernier, ouf !

## Tests utilisateurs et Confin’atelier

J’ai continué de faire tester Flus à des copains et copines, ainsi qu’à des
personnes qui suivent le projet depuis un moment et se sont montrées
intéressées par ce nouveau Flus. Les retours jusque-là sont positifs, mais j’ai
l’impression de sentir une sorte de « on reste sur notre faim, on aimerait en
voir plus ». J’avais hésité à expliciter le caractère « beta » de ce service à
son lancement, ça me semble désormais essentiel pour « casser » en quelque
sorte les attentes.

Il y a en particulier un décalage entre ce qui est présenté aujourd’hui sur [la
page d’accueil](https://flus.fr) et la réalité de l’outil, d’où l’importance
d’une refonte dans les grandes largeurs. Il est clair que j’aimerais avoir tout
ce qui est aujourd’hui annoncé, mais hey, mon temps est limité :)

Ce samedi a également eu lieu un [Confin’atelier](https://contribateliers.org/),
des ateliers pour aider les personnes à contribuer à des logiciels libres. J’en
ai profité pour animer un petit atelier et présenter Flus. J’avais prévu de
faire des tests pour détecter des bugs et récupérer les avis, mais on a surtout
papoté. Ça m’a permis de travailler mon discours de présentation, et de
confronter mes idées à des personnes que je ne connaissais pas (merci à eux !)
Je crois que le projet a été plutôt bien reçu et j’en suis ressorti satisfait
des échanges que j’ai eus. À refaire ! (j’annoncerai ce genre d’évènement à
l’avenir)
