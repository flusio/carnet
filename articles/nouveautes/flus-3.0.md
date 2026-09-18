---
title: Flus 3.0
date: 2026-10-12 09:00
description: Présentation des nouveautés : les fils thématiques, un moteur de recherche plus puissant, et une nouvelle page pour gérer ses sources.
---

Flus est une plateforme de veille open-source qui combine agrégation de flux, listes « à lire plus tard » et partage de signets pour vous éviter d‘avoir à jongler entre trop d’outils.
Elle vous permet de suivre, lire, conserver et partager votre veille facilement.
Flus est financé grâce aux abonnements de ses utilisateurs et utilisatrices.

J’ai le plaisir de vous annoncer que **Flus sort aujourd’hui en version 3.0.**

La plupart des changements présentés dans cet article seront détaillés dans des articles dédiés que je publierai au fil de la semaine.
Je concluerai vendredi par la publication de **ma feuille de route 2027.**

## 🪡 Donnez du contexte à votre veille grâce aux fils thématiques

La nouveauté majeure de cette version 3.0 est **les « fils » thématiques.**

Les fils répondent à deux problèmes principaux :

1. **Créer des espaces de veille contextuels.** C’est un outil adapté pour séparer votre veille personnelle de votre veille professionnelle par exemple. Vous n’avez pas envie de vous faire rattraper par le boulot quand vous voulez juste vous détendre le weekend, n’est-ce pas ?
2. **Gérer les sources les plus prolifiques.** Vous avez _besoin_ de suivre ce site qui publie plusieurs dizaines de fois par jour, mais ça fait vraiment _trop_ pour le faire correctement ? Les fils vous permettent de vous concentrer et de trier facilement ce qui doit être lu grâce aux filtres avancés, enregistrables facultativement sous forme de vues.

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-streams.webp" alt="Capture d’écran montrant un fil « Accessibilité Web » dans Flus.">

    <figcaption>
        Les expert⋅es en accessibilité voudront sans doute créer un fil « Accessibilité Web » regroupant toutes leurs sources sures.
    </figcaption>
</figure>

Les fils peuvent également **être partagés.**
Que ce soit de manière privée avec vos collègues pour établir une veille commune, ou de manière publique pour mettre en avant les sources que vous avez patiemment sélectionnées, vous disposez désormais d’une manière de partager les dessous de votre veille.

Pour **commencer avec les fils de veille,** au choix :

- Vous aviez organisé vos sources en groupes, facile : ceux-ci ont automatiquement été transformés en fils !
- Vous suivez déjà plusieurs sources dans Flus, et certaines ont un thème en commun : créez un fil depuis le menu de gauche sous l’onglet « Lecture », puis ajoutez-y ces sources en suivant le guide.
- Vous venez d’un autre agrégateur au sein duquel vos flux sont organisés en catégories ou dossiers : ceux-ci deviennent des fils après les avoir importés depuis un export OPML de vos flux.

Je reviendrai plus en détail sur toutes les possibilités des fils dans un article qui sera publié dès demain.

## 🔎 Recherchez avec précision grâce au nouveau moteur de recherche

Un champ de recherche était déjà disponible dans l’onglet « Mes liens » de Flus.
Il est maintenant également disponible en tant que filtre au sein des fils.

Dans ces deux cas, le moteur est désormais bien plus puissant.
Vous pouvez en effet exprimer **des recherches complexes :**

- la combinaison de mots avec le mot-clé `AND` (par défaut), l’alternative avec `OR`, ou encore l’exclusion avec `NOT` ;
- le groupement avec les parenthèses, par exemple : `(rapport OR étude) NOT #archive` ;
- par attributs, notamment par date (ex. `date: 2026-10`), par durée de lecture (`duration: >10`), ou en recherchant au sein de vos notes (`notes: rapport`).

Ces nouvelles possibilités se révèlent très utiles pour créer **des vues dédiées à des sujets spécifiques** au sein des fils de veille (on y revient !)

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-search2.webp" alt="Capture d’écran montrant un champ texte de filtre.">

    <figcaption>
        Les recherches complexes permettent de filtrer les liens issus de vos sources de manière puissante.
    </figcaption>
</figure>

Il existe davantage d’options de recherche : tout est expliqué dans un écran d’aide au sein de Flus, accessible depuis le champ de recherche.

J’aurai aussi l’occasion de vous donner plus de détails dans un article dédié prévu pour ce mercredi.

## 🕸️ Gérez vos sources plus simplement

Une nouvelle page pour **gérer vos sources** fait son apparition avec Flus 3.0.
Cette page liste l’ensemble des flux et des collections Flus que vous suivez.
Vous pourrez notamment :

- **Rechercher et filtrer vos sources** : pratique pour en retrouver une précisément, ou pour lister toutes les sources désormais inactives par exemple.
- **Gérer vos abonnements** (paramétrage pour le journal, ajout au sein des fils, désabonnement), que ce soit individuellement au niveau de chaque source, ou de manière groupée grâce aux actions de masse.

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-sources.webp" alt="Capture d’écran montrant un formulaire de filtre et des sources.">

    <figcaption>
        Les filtres permettent de retrouver précisemment n’importe quelle source.
    </figcaption>
</figure>

Contrairement à l’ancien onglet « Flux », cette page se situe au sein de l’onglet « Lecture », pour mieux représenter le fait que les sources alimentent votre journal et vos fils (qui s’y trouvent également).
L’onglet « Flux » restera visible quelques temps pour guider les utilisateurs et utilisatrices existantes vers la nouvelle page, mais il disparaîtra à terme (remplacé par… <em lang="en">wait and see</em> 👀).

Je reparlerai des différents cas d’usage de la page « Sources » dans un article dédié qui sera publié ce jeudi.

## 🎁 Il en reste encore, je vous le mets aussi ?

Le tour des nouveautés de la version 3.0 de Flus est presque terminé, mais trois améliorations méritent encore d’être mentionnées.

Tout d’abord, vous pouvez désormais **renommer et changer l’image d’illustration des sources** que vous suivez. Pour renommer une source, cliquez sur « Gérer l’abonnement », puis indiquez un « Nom personnalisé ». Pour changer l’illustration, cliquez simplement sur son image depuis la page de la source. Le nom et l’image que vous lui donnerez apparaitront ensuite partout : journal, fils, liste des sources…

Ensuite, les notes et les champs de description qui acceptent la syntaxe [Markdown](https://flus.fr/markdown) disposent désormais d’**une barre d’édition et de raccourcis** pour vous aider à rédiger.
L’édition devrait donc devenir beaucoup plus facile pour les personnes qui ne connaissent pas le Markdown par cœur (rassurez-vous : vous n’êtes pas seul⋅e !)

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-markdown-editor.webp" alt="Capture d’écran d’un champ texte Markdown avec une barre d’outil.">

    <figcaption>
        La barre d’outil vous permettra de formatter votre texte en Markdown sans avoir à mémoriser sa syntaxe.
    </figcaption>
</figure>

Enfin, les sessions de connexion évoluent, et cela devrait en ravir plus d’un⋅e !
Pour la faire courte : **tant que vous visitez Flus régulièrement, vous n’aurez plus besoin de vous reconnecter tous les mois.**
Pour la faire précise : la durée de votre session sera désormais raccourcie à 2 semaines (contre 1 mois précédemment), mais sera prolongée si vous vous reconnectez durant ce laps de temps.
La durée totale est quant à elle limitée à un an par mesure de sécurité.
Ce changement s’applique de manière similaire à l’extension navigateur, et tous les outils passant par l’<abbr>API</abbr>.

## Mise à jour du site

Les changements de la 3.0 ayant été nombreux, j’en ai profité pour **mettre le site à jour** afin d’encore mieux présenter Flus.

Hormis [la page d’accueil](https://flus.fr) qui subit quelques retouches, c’est surtout la page des [Fonctionnalités](https://flus.fr/foncctionnalites) qui a été complètement retravaillée.
Elle présente désormais de manière quasiment exhaustive tout ce qu’a à offrir Flus.
C’est LA page à creuser si vous vous posez des questions sur Flus… avant de tester [la démo](https://demo.flus.fr) bien sûr !

[screenshot]

N’hésitez donc pas à partager l’adresse du site et à envoyer la liste des fonctionnalités à votre responsable veille pour tenter de le ou la convaincre de passer à Flus 😜

## Conclusion

Cette nouvelle version majeure est — évidemment ! — la version la plus aboutie de Flus.
Elle fait surtout passer l’outil à un échelon supérieur en terme de qualité et d’options de veille et me permet de réaffirmer mon ambition d’en faire un outil de veille professionnel incontournable.

L’année qui vient devrait être particulièrement intéressante pour les équipes qui font de la veille, puisque je compte faire de la veille collaborative ma priorité.
Je vous en reparlerai ce vendredi en vous présentant ma feuille de route 2027.

En attendant, je vous laisse [explorer le site](https://flus.fr), [tester la démo](https://demo.flus.fr), ou [vous inscrire sur Flus](https://app.flus.fr/registration). 
N’hésitez pas non plus à relayer l’information sur vos réseaux : le bouche-à-oreille est ce qui permet de faire connaître Flus.
