---
title: Technique de veille : trouver des flux RSS
date: 2026-04-08 08:30
description: Dans le milieu de la veille, suivre un site pour se tenir au courant de ses actualités consiste en premier lieu à trouver son flux RSS. Mais comment trouver un tel flux ?
---

Dans le milieu de la veille, suivre un site pour se tenir au courant de ses actualités consiste en premier lieu à trouver son flux <abbr>RSS<abbr>.
Mais comment trouver un tel flux ?

Dans cet article, je vous donne **quatre méthodes pour trouver un flux <abbr>RSS</abbr>,** en plus de vous expliquer comment vous faciliter la vie grâce à l’extension navigateur de Flus.

Pour rappel, [Flus](https://flus.fr) est une plateforme de veille conçue pour vous aider à  organiser votre veille : collecte d’informations, organisation thématique de vos liens, annotations et partage simple et rapide.
Elle permet également d’agréger des flux <abbr>RSS<abbr>, ce qui peut vous aider à pratiquer les méthodes données dans cet article en parallèle de votre lecture.

## 1. Ne pas chercher

C’est contre-intuitif, mais parfois il n’y a même pas besoin de chercher !

En effet, un site bien configuré peut indiquer, dans son code source, l’adresse de son flux.
Ainsi, si l’on fournit seulement l’adresse du site, **un agrégateur sera capable de trouver le flux correspondant et l’ajouter automatiquement.**
C’est évidemment le plus pratique, et fonctionne relativement bien.

Malheureusement, beaucoup de sites sont mal configurés.
Si vous connaissez l’éditeur d’un tel site — ou mieux : que vous en êtes l’éditeur ! —, il est pourtant très simple de déclarer le flux <abbr>RSS<abbr> d’un site.
Pour cela, suivez le guide : [_Déclarez vos flux !_](https://flus.fr/carnet/declarez-vos-flux.html)

## 2. Chercher le terme « <abbr>RSS<abbr> » ou son icône

Le flux n’est pas déclaré ? Il va falloir trouver son adresse par vous-même !

Heureusement, beaucoup de sites mentionnent la présence de leur flux, par exemple dans leur pied de page.
Pour cela, vous pouvez **démarrer une recherche** — le fameux raccourci clavier <kbd>CTRL + F</kbd> — avec le terme « <abbr>RSS<abbr> ».

Vous pouvez également chercher visuellement sur la page la présence d’une icône ressemblant à celle-ci :

<figure class="panel panel--rounded panel--grey text--center">
    <img class="illustration" src="images/feeds/icon.png" alt="Icône flux RSS">

    <figcaption>
        Crédit&nbsp;: <a href="https://fr.wikipedia.org/wiki/RSS#/media/Fichier:Feed-icon.svg">Mozilla Foundation</a>
    </figcaption>
</figure>

Une fois le terme ou le logo trouvé, **il suffit de copier-coller le lien correspondant dans votre agrégateur.**

Attention, le lien mène parfois à une page intermédiaire.
C’est souvent le cas pour les sites d’actualité (par exemple, [LeMonde.fr](https://www.lemonde.fr/le-monde-et-vous/article/2025/07/14/les-flux-rss-du-monde-fr_5498778_3237.html)).
Le ou les liens à copier se trouvent alors sur cette page intermédiaire.

## 3. Rechercher grâce à un moteur de recherche classique

Le site que vous souhaitez suivre n’évoque pas la présence d’un flux ?

Il peut être utile de faire une recherche à partir de votre moteur de recherche favori.
**Recherchez le terme « <abbr>RSS<abbr> » accolé au nom du site**, et vous obtiendrez parfois le lien vers le flux recherché.

Ici encore, il ne vous reste plus qu’à en copier-coller le lien correspondant.

## 4. Tester des motifs d’adresses

Votre moteur de recherche ne vous retourne rien non plus ?
Attendez, tout n’est pas encore perdu !

Certains éditeurs de sites ne savent même pas qu’ils proposent un flux <abbr>RSS<abbr>.
C’est souvent le cas pour les personnes qui utilisent Wordpress pour gérer leur site par exemple : il leur met à disposition un flux dont elles ignorent l’existence.

Il existe ainsi **des motifs d’adresses fréquents** pour les flux <abbr>RSS<abbr>.
Vous pouvez alors essayer différentes adresses dérivées de celle du site pour essayer de trouver son flux.

Voici par exemple quelques exemples de chaines **à ajouter à l’adresse d’un site :**

- `/feed`
- `/feed.xml`
- `/rss`
- `/rss.xml`

Ainsi, si l’adresse du site est `https://example.com`, vous pouvez essayer de vous rendre directement sur `https://example.com/feed` (ainsi que les variations mentionnées ci-dessus) pour vérifier si un flux y est présent.

## Se faciliter la vie avec l’extension navigateur de Flus

Tout cela peut paraitre fastidieux (et ça l’est pour certains sites !)
C’est pourquoi l’extension navigateur de Flus vous facilite la vie, notamment en automatisant la recherche d’adresses sur la base de motifs.

L’extension vous permet également de **suivre un site directement [dans Flus](https://flus.fr)**, sans avoir à en copier-coller l’adresse.
Cela vous évite ainsi tout un tas de manipulations pas toujours pratiques.

Vous pouvez apprendre à suivre des sites à partir de l’extension navigateur dans cet article : [_Extension navigateur : découvrez et suivez les flux Web des sites que vous visitez_](https://flus.fr/carnet/extension-navigateur-decouvrez-et-suivez-les-flux-Web.html).

Avec ces différentes méthodes, additionnées à l’utilisation de l’extension Flus, vous devriez être en mesure de suivre tous les sites disposant d’un flux <abbr>RSS</abbr>, qu’ils soient correctement mis en avant, ou masqués au plus profond d’un site.
