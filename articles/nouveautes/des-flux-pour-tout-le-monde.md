---
title: Des flux pour tout le monde !
date: 2021-06-02 10:00
description: Les flux RSS, c’est compliqué ? Et si on changeait ça ?
illustration: images/flusio-search-3.png
---

Les flux <abbr>RSS</abbr>[^1], peut-être en avez-vous entendu parler ? Peut-être
même que vous avez essayé, mais que ça ne vous a pas plu ? Trop compliqué ?
Trop de choses à lire ?

[^1]: Note aux techno-pinailleurs : lorsque je parle de flux <abbr>RSS</abbr>,
  je parle également des flux Atom. C’est un détail technique et en vérité,
  dans Flus, on parle simplement de « flux ».

**Pourtant, je suis convaincu que le <abbr>RSS</abbr> est l’une des plus belles
technologies du Web.** Elle permet à la fois de suivre vos sites favoris en une
place unique, tout en les ouvrant sur le reste du monde. J’y crois tellement
qu’elle est au cœur de mon activité depuis le début, avec [Flus 1](https://flus.io),
et me suit en réalité depuis bientôt 10 ans. Malgré cela, je crois que les
agrégateurs de flux <abbr>RSS</abbr> existants sont loin d’être optimaux.
Pire : leurs expériences utilisatrices centrales se ressemblent toutes ! Il est
temps de tenter autre chose.

À vrai dire, j’ai une double bonne nouvelle : **[Flus 2](https://app.flus.fr)
supporte désormais les flux ET ils sont très simples à utiliser.**

## Des flux à la portée de toutes et tous

> « Simple à utiliser, mais z’encore ? comment ça marche ? »

Je souhaitais que l’expérience pour suivre un flux <abbr>RSS</abbr> au sein de
Flus soit le plus simple et intuitif possible. Une toute nouvelle interface a
fait son entrée il y a quelque temps pour ajouter des liens à Flus (je vous en
parlais dans [cette <em lang="en">weeknote</em>](weeknotes-26.html)) ; **elle
vous présente désormais également les flux automatiquement détectés sur le lien
recherché. Vous pouvez alors suivre ces flux en un clic.**

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-search-3.png" alt="Capture d’écran de la page « Nouveau lien » avec le champs URL rempli et une prévisualisation du lien ainsi qu’un flux à suivre.">
    </div>

    <figcaption>
        Lors de l’ajout d’une <abbr>URL</abbr>, le lien peut être prévisualisé
        et les flux auto-détectés sont listés pour les suivre en un clic.
    </figcaption>
</figure>

L’avantage principal se trouve dans le fait de se voir proposer un flux alors
qu’on ne le recherchait pas nécessairement. Un ou une utilisatrice qui ne
connait pas l’existence des flux <abbr>RSS</abbr> peut ainsi se mettre à les
utiliser de façon naturelle, sans qu’on ait à lui en expliquer les aspects
techniques. Si vous disposez d’un lien direct vers un flux, vous pouvez bien
entendu le suivre en le copiant dans le même champ de saisie.

Seconde particularité : les flux sont des collections publiques. Cela implique
qu’ils disposent d’une <abbr>URL</abbr> à partager autour de vous. Par exemple,
il m’est désormais possible de vous partager [le flux de ce
carnet](https://app.flus.fr/collections/1697725479256195983) facilement. C’est
une nouvelle porte d’entrée pour les personnes à qui je parle de flux
<abbr>RSS</abbr> ; mes propos sont illustrés en un clic.

## Sus aux fils d’actualités à rallonge !

> « J’ai déjà essayé les flux RSS, mais ça me faisait vraiment trop de choses à
> lire ; j’étais noyé‧e ! »

Autour de moi, cette préoccupation semble largement partagée. La question de la
quantité d’informations à digérer est au cœur de Flus : le journal a justement
été créé pour vous aider à gérer la frénésie qu’ont certains sites à publier.
Son objectif est de vous sélectionner du contenu à lire sans vous submerger ;
j’en parlais [dans cet article](lire-a-son-rythme.html).

**Pour accompagner l’arrivée des flux, le journal a été largement revu et
amélioré.** L’écran précédent de configuration, peu attractif, a été supprimé
et remplacé par trois boutons de sélection : les dernières publications, ou
trois liens de moins de 10 minutes, ou un lien de plus de 10 minutes. Ces deux
dernières sélections permettent de dépiler vos signets en fonction de votre
temps disponible ; je ne reviens pas sur elles dans cet article.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-news-6.png" alt="Capture d’écran du journal présentant trois boutons pour le remplir avec des liens à lire.">
    </div>

    <figcaption>
        Chaque bouton de sélection possède un comportement différent, adapté à
        différentes manières de parcourir votre actualité.
    </figcaption>
</figure>

La sélection des dernières publications est axée, quant à elle, sur le contenu
chronologique : **le journal cherche, dans vos collections et flux suivis, les
derniers liens publiés que vous n’avez pas encore lus.** Aussi, il sélectionne
un maximum de neuf liens en remontant tout au plus jusqu’à trois jours en
arrière. Cela évite que vous ne vous retrouviez avec du contenu à lire
éternellement. Fini ainsi les fils d’actualités à rallonge qui vous font
angoisser de ne pas avoir tout lu.

## Et bien plus encore !

Beaucoup d’autres ajouts et améliorations ont fait leur apparition ces
dernières semaines : groupement et illustration des collections, espace de
découverte des collections publiques amélioré, importation de fichiers
<abbr>OPML</abbr>, un tout nouvel espace pour contacter le support (i.e.
moi-même 👋), possibilité de réinitialiser votre mot de passe en cas de perte,
etc.

**Pour (re)découvrir Flus 2, [je vous donne rendez-vous ici](https://app.flus.fr/registration) !**

Pour rappel, Flus a pour objectif de proposer un espace en ligne pour
s’informer et discuter de l’actualité ou de sujets de société de manière
apaisée. Avec l’ajout des flux <abbr>RSS</abbr>, nous nous approchons encore un
peu plus de cet objectif.

Le service est financé grâce à ses utilisateurs et utilisatrices à travers un
système d’abonnements solidaires : 3 € par mois, 30 € par an et [une cagnotte](https://flus.fr/cagnotte)
qui fournit des abonnements mensuels gratuits. Enfin, le code est bien entendu
libre ([publié ici](https://github.com/flusio/flusio)) et j’apporte un
soin particulier à échanger et vous accompagner dans l’utilisation de mon
service pour vous le rendre le plus accessible possible.

Si vous appréciez Flus, ou simplement la démarche que j’ai entreprise avec,
**je vous invite également à en parler autour de vous : cela m’aidera
grandement à me faire connaître et, éventuellement, réussir à vivre de mon
activité.**
