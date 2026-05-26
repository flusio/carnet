---
title: Bulletin de Flus n°5
date: 2026-05-27 10:00
description: Au programme de ce bulletin : de (prochaines) nouvelles options de personnalisation, quelques sueurs froides côté maintenance, une réflexion sur les outils de prise de notes, les menaces qui pèsent sur Internet Archive, un plaidoyer pour les protocoles ouverts, le prochain webinaire Flus, les Journées du Logiciel Libre à Lyon, une nouvelle technique de veille publiée sur le blog, et un peu d’algorithmie interne à Flus 🤓
---

Le mois de mai est là, les premières chaleurs également.
Pour ma part, ces températures ont la fâcheuse habitude de me rendre moins efficace, en particulier sur les tâches qui me sont les plus laborieuses.
Si elles perdurent, c’est le travail de communication autour de Flus qui risque de pâtir de la chaleur caniculaire.
L’occasion de vous rappeler de boire de l’eau, de vous protéger de la chaleur et, si vous en avez l’opportunité, de moins travailler (et/ou de vous concentrer sur les tâches qui vous sont les plus faciles).
Si je ne publie pas de bulletin durant les trois prochains mois, c’est que je serai trop occupé à vous préparer une belle mise à jour pour la rentrée, un ventilateur rivé sur moi 🥵

En attendant, j’ai tout de même rédigé cette cinquième édition du Bulletin de Flus. Bonne lecture !

**Au programme de ce bulletin :** de (prochaines) nouvelles options de personnalisation, quelques sueurs froides côté maintenance, une réflexion sur les outils de prise de notes, les menaces qui pèsent sur Internet Archive, un plaidoyer pour les protocoles ouverts, le prochain webinaire Flus, les Journées du Logiciel Libre à Lyon, une nouvelle technique de veille publiée sur le blog, et un peu d’algorithmie interne à Flus 🤓

<p class="panel panel--grey panel--rounded">
    Pour rappel, Flus est une plateforme de veille en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide. Elle s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.
</p>

## Les coulisses techniques

### Petits chantiers avant l’été

Avant d’attaquer le gros chantier des fils de veille, j’ai planché sur quelques fonctionnalités plus modestes pour vous permettre de patienter durant l’été :

- Trois options de personnalisation : ajout d’un thème sombre, choix de la taille du texte et possibilité d’utiliser la police d’écriture par défaut du système.
- De nouvelles fonctionnalités pour gérer ses liens : changement de l’image d’illustration, possibilité d’indiquer qu’un lien marqué comme inaccessible est en fait accessible, et possibilité de préciser l’origine d’un lien.

Ces fonctionnalités devraient arriver en juin.

### Maintenance et turbulences

J’ai été bien occupé en termes d’administration système.
De nombreuses failles de sécurité ont impacté les logiciels et dépendances que j’utilise.
J’ai tenté d’être aussi réactif que possible pour appliquer les actions de mitigation, puis les mises à jour quand elles étaient disponibles.

La recrudescence des failles de sécurité détectées par des outils d’Intelligence Artificielle m’inquiète moindre mesure, tant qu’elles le sont de manière encadrée.
Néanmoins, plusieurs d’entre elles ont été publiées sans que le correctif n’existe encore.
Cela demande donc plus de travail pour s’assurer qu’on en est protégé.
Espérons que cela ne devienne pas le quotidien !

## Sur le radar

### [Et toi, qu’est-ce que tu fiches ? — Arthur Perret](https://www.arthurperret.fr/blog/2022-05-20-et-toi-qu-est-ce-que-tu-fiches.html)

Arthur Perret explique qu’avant de réfléchir à quel outil de prise de notes utiliser, il faut se poser la question de « pour quoi faire ? »

Le travail d’Umberto Eco dans _Comment écrire sa thèse_ permet de réaliser que bon nombre de ses conseils datant des années 80 sont toujours d’actualité.

> Les travailleurs de la connaissance poursuivent des objectifs dans lesquels s’insère déjà la nécessité de prendre des notes. C’est en connaissant ces objectifs que le choix d’outil prend du sens. Et chaque situation a ses spécificités, qui jouent au moment de sélectionner le bon outil : là où Zettlr peut s’imposer pour un étudiant en SHS, Obsidian sera peut-être préférable pour le documentaliste qui alimente un wiki.

### [Internet Archive a 30 ans : pourquoi ce pilier du Web est aujourd’hui menacé — Le Monde (payant)](https://www.lemonde.fr/pixels/article/2026/05/11/internet-archive-a-30-ans-pourquoi-ce-pilier-du-web-est-aujourd-hui-menace_6687954_4408996.html)

Internet Archive est un pilier — parfois méconnu — du Web d’aujourd’hui.
Sa mission est d’archiver le contenu du Web pour préserver notre mémoire future.
Cet article du Monde présente les défis que rencontre cette mission : menace des éditeurs sur la base du droit d’auteur, cloisonnement rapide du Web lié aux protections contre les bots <abbr>IA</abbr>, recrudescence des fausses informations.

> En 2003, avec les bibliothèques nationales scandinaves et islandaises, la fondation a mis au point le crawler Heritrix, un robot arpentant les pages Web pour les transformer en archives. « Et en 2005, après avoir aidé la <abbr>BNF</abbr>, ils ont confié à bas prix toutes les archives du Web français que nous ne pouvions pas récolter, complète Vladimir Tybin, chef de service du dépôt numérique à la <abbr>BNF</abbr>. Sans eux, nous aurions eu un vide entre 1996 et 2005. »

### [The Boring Internet — Terry Godier (anglais)](https://www.terrygodier.com/the-boring-internet/ascii)

Dans cet article, Terry Godier rappelle que, malgré un Internet qui semble de plus en plus moribond, les protocoles ouverts sont la clé de voute de ce qui le maintient toujours bien vivant.
Ce qui meurt, ce sont les services fermés.

Traduction personnelle d’un extrait :

> La raison pour laquelle votre mamie, votre banque et votre patron peuvent tous vous joindre à la même adresse email, c’est que le protocole qui rend cela possible a été publié il y a plus de quarante ans, et que les personnes qui l’ont publié n’ont pas réussi à l’enfermer au sein d’une unique entreprise.

## Les évènements

Deux évènements auront lieu… cette fin de semaine !

Tout d’abord, **le prochain webinaire de Flus se tiendra en ligne ce vendredi 29 mai de 13h à 14h.**
C’est l’occasion de découvrir l’outil et d’échanger si vous avez des questions.
Le lien sera partagé sur les réseaux sociaux, mais vous pouvez aussi vous inscrire depuis [le formulaire de contact]([https://flus.fr/contact](https://flus.fr/contact "https://flus.fr/contact") ; je vous enverrai alors le lien le jour J par email.

Ensuite, **Flus sera présent aux JdLL les 30 et 31 mai à Lyon.** Difficile de rater le stand : il sera au milieu de la première salle, en face de l’entrée ! Vous y trouverez des stickers, des flyers, et peut-être même un aperçu des fils de veille, la future fonctionnalité majeure de Flus.

## Le récap’ des publications

### Sur le blog

Une troisième technique de veille est disponible sur le blog.
Si vous avez tendance à vous informer sans méthodologie particulière — et que vous pensez même « ne pas faire de veille » ! —, ces quelques fonctionnalités de Flus vous permettront de mieux valoriser ce que vous lisez en ligne de manière allégée.

**Lire « [Technique de veille : valorisez votre veille passive avec Flus](https://flus.fr/carnet/technique-de-veille-valorisez-votre-veille-passive.html) »**

### Sur les réseaux

En plus de ce blog, je publie également sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr), n’hésitez pas à m’y suivre).
Je repartage ici de manière plus pérenne les publications notables du mois que vous auriez pu manquer.

#### L’info geek du jour 🤓

Depuis février 2025, Flus vous affiche la fréquence de publication de chaque flux et collection. Mais comment est calculée cette fréquence ?

Il s’agit d’une bête règle de trois : nombre de liens publiés durant l’année passée, divisé par le nombre de jours depuis la plus ancienne publication de l’année passée, multiplié par 365. Ce qui donne une fréquence de publication annuelle.

Il ne reste plus qu’à diviser ce nombre par 365, 52, ou 12 pour obtenir la fréquence journalière, hebdomadaire ou mensuelle !

🤔 Comprendre les algorithmes qui régissent nos plateformes, c’est aussi se rendre moins dépendant d’elles.
