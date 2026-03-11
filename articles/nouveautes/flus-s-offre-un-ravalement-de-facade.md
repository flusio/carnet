---
title: Flus s’offre un ravalement de façade
date: 2026-03-12 09:30
description: Présentation des changements principaux de la nouvelle interface rafraichie de Flus.
---

En septembre dernier, pour accompagner la sortie de [la nouvelle extension navigateur](flus-deux-point-zero.html), Flus adoptait la charte graphique de celle du site et de l’extension.
Néanmoins, cette mise à jour graphique n’était qu’un premier pas avant une seconde phase bien plus ambitieuse : un ravalement de façade en bonne et due forme.

**Aujourd’hui, je suis très heureux de vous annoncer que Flus dispose d’une interface entièrement rafraichie !**

Sans tout réinventer, cette nouvelle interface offre quelques évolutions qui devraient être plus agréables, plus compréhensibles, mais aussi plus faciles à maintenir sur le long terme.
Dans cet article, je vous présente quelques-uns des changements principaux.

## Un menu Lecture vertical et des signets renommés en « À lire »

Vous le remarquerez rapidement : le menu de l’onglet Lecture troque son orientation horizontale pour **une disposition verticale.**

<div class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-redesign-1.webp" alt="L’onglet Lecture de Flus, présentant un menu vertical et non plus horizontal.">
</div>

En plus d’être plus proche en termes d’expérience utilisateur de ce qui se fait ailleurs, cette évolution était cruciale pour les futures fonctionnalités de cet onglet (notamment concernant la veille thématique).
Sur mobile, ce menu se cache discrètement derrière un bouton « Menu » qui apparait en haut de l’écran.

J’ai profité de ce changement pour **renommer la notion de « Signet » en « À lire ».**
En effet, le terme précédent était trop générique et créait de la confusion chez certaines personnes.
« À lire » va désormais droit au but et devrait simplifier la compréhension de l’interface.

## Les pages collections et bloc-notes réorganisées

Les pages des collections et des bloc-notes faisaient partie des principales motivations à cette refonte.
En effet, ces pages étaient **mal structurées,** notamment avec des boutons d’actions répartis au petit bonheur la chance… quand il n’en manquait pas !
Les images d’illustration horizontales, quant à elles, prenaient énormément d’espace à l’écran.
Pour enfoncer le clou, il m’était difficile de faire évoluer ces pages.

Désormais, **les images d’illustration adoptent un format carré** et sont alignées à gauche.
Tous les éléments descriptifs — comme le titre, la description, la personne ayant créé la collection, etc. — se retrouvent à sa droite, **regroupés de manière plus logique.**

<div class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-redesign-2.webp" alt="La page d’une collection Flus affichant illustration, titre, fréquence de publication, auteur et description.">
</div>

Du côté des boutons d’actions, ils disposent désormais **d’un espace dédié** évitant qu’ils ne se dispersent partout sur la page.
Ce changement a permis d’afficher notamment les boutons de modification et de réparation des liens directement sur la page du bloc-note.
Cela devrait s’avérer très utile lorsque vous ouvrirez un bloc-note depuis l’extension navigateur.

En parlant de bloc-note, j’ai essayé de le rendre plus élégant et surtout plus structuré.

<div class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-redesign-3.webp" alt="Le bloc-note d’un lien affichant des citations et des tags.">
</div>

Notez enfin que la page de profil a également adopté la même structure pour plus de cohérence.

## De nouvelles pages d’inscription et de connexion

Ça a été le premier chantier de cette refonte : **les pages d’inscription et de connexion étaient on ne peut plus tristes.**
Très dommage pour des pages qui sont les premières à être visitées !

Je les ai donc revues pour y ajouter une illustration, une courte présentation, et m’assurer qu’elles soient plus agréables à utiliser.

<div class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-redesign-4.webp" alt="La nouvelle page de connexion de Flus avec une illustration à gauche, et le formulaire à droite.">
</div>

Je prévois encore d’alléger la page d’inscription qui est malheureusement encore trop chargée à mon gout, mais cela viendra en temps et en heure.

## Une police d’écriture plus petite

On m’a souvent fait la remarque : l’interface est trop « grosse ».
Effectivement, j’avais eu la main un peu lourde sur la taille de la police.
De plus, je n’avais pas remarqué que dans certaines configurations, l’interface était bien plus imposante que ce que j’avais imaginé.

J’ai donc **réduit la taille de la police** pour qu’elle se rapproche plus de ce qui se fait ailleurs.
Si celle-ci vous parait trop petite, n’hésitez pas à zoomer un peu la page… en attendant une option dédiée directement intégrée dans Flus !

## Lucide, le nouvel ensemble d’icônes

Flus utilisait jusqu’à maintenant l’ensemble d’icônes [Clarity](https://clarity.design/documentation/icons/shapes) qui propose un peu plus de 400 icônes.
Si cela suffisait pour les actions principales, **le choix des icônes a souvent été un casse-tête.**
Cela explique par exemple l’ancienne icône un peu étrange de l’onglet Lecture.
J’ai aussi dû bricoler plusieurs fois des icônes avec Inkscape, me trouvant dans une impasse avec Clarity.

J’ai profité de la nouvelle interface pour changer les icônes : Flus utilise désormais **[Lucide](https://lucide.dev/) et ses quelque 1 700 icônes.**
J’ai pu trouver de bons — voire meilleurs — remplaçants pour 95 % des icônes que j’utilisais.
Et pour les 5 % restants ? Lucide propose [un outil pour créer des icônes](https://studio.lucide.dev/) très simplement.
Mieux que ça, Lucide est plus orienté communauté que Clarity, et j’ai donc saisi l’occasion pour proposer [une nouvelle icône](https://github.com/lucide-icons/lucide/issues/4130).

## Sous le capot, une réécriture intégrale

Tout ce travail « esthétique » a avant tout été un travail technique de longue haleine.
Car j’ai non seulement revu la structure du code source, mais j’ai aussi changé entièrement le moteur qui faisait tourner cela.

Pour les plus techniques d’entre vous, je suis en effet passé de templates en pur <abbr>PHP</abbr> et <abbr>HTML</abbr>, au moteur de templates [Twig](https://twig.symfony.com/).

Dit plus simplement : **j’ai réécrit l’entièreté du code source qui produit l’interface !**
Il ne s’agit nullement d’un caprice, mais le besoin de répondre à deux problèmes :

1. le moins pressant : je trouve l’écriture de templates Twig plus agréable et plus naturelle, tout en encourageant de meilleures pratiques. C’est donc plus de confort pour moi.
2. le plus critique : les templates Twig protègent par défaut contre certaines attaques, dites <abbr title="Cross-site scripting">XSS</abbr>. Si je faisais attention à bien sécuriser Flus jusqu’ici, un oubli était vite arrivé. Désormais, Flus sera protégé contre ce genre d’attaques par défaut. C’est plus de sérénité pour vous et pour moi.

Changer de moteur ne se fait pas en un claquement de doigts, et j’ai passé plusieurs semaines pour m’assurer que je n’avais pas introduit de problèmes.
J’ai pris le temps de re-tester chaque fonctionnalité manuellement, mais n’hésitez pas à **me signaler tout dysfonctionnement résiduel.**

## Et ensuite ?

Tout cela fut un gros chantier — peut-être le plus important depuis les débuts de Flus —, mais heureusement il débloque beaucoup de possibilités.

En particulier, les options de personnalisation de l’interface sont désormais plus proches que jamais : adaptation de la taille de la police, thème sombre, affichage sous forme de liste de liens, etc.
Aussi, je l’ai mentionné en parlant du menu de l’onglet Lecture, mais la possibilité d’effectuer votre veille de manière thématisée va pouvoir devenir réalité ; le nouveau menu vertical débloquant de nouvelles possibilités.

Je me garde aussi tout un tas d’ajustements et de fonctionnalités sous le coude.
Si j’ai pu en tester les grandes lignes dans une version « prototype », le chemin reste long avant que tout cela ne soit vraiment fonctionnel.

Surtout, j’essaye de rester concentré sur [la feuille de route 2026](feuille-de-route-2026.html) que j’ai présenté en septembre dernier.
Il y a encore de quoi faire !

J’espère que ces évolutions vous plairont et saura attirer un nouveau public qui pouvait être rebuté par l’ancienne version.
**C’est donc une bonne occasion pour parler de Flus autour de vous !**
