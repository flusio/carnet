---
title: Quoi de neuf en février
date: 2022-03-04 10:57
description: Résumé du mois de février pour Flus : profils, navigation, accessibilité et le soin du détail.
---

_Février a été chargé en nouveautés. J’en ai déjà détaillé quelques-unes au fil du mois, mais il est temps que je vous explique plus en longueur ce qui a été fait._

## Les gros chantiers : profils et navigation

Deux gros chantiers ont pris fin ce mois-ci.

Le premier, ce sont [les profils publics](votre-profil-flus.html) pour vous permettre de partager facilement votre veille. Le second, c’est la refonte de [la navigation principale](nouvelle-navigation-flus.html) afin de s’y retrouver plus facilement dans Flus.

Je ne reviens pas dessus puisque j’en ai déjà parlé dans ce carnet.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-navigation.png" alt="Capture d’écran du menu de Flus affichant trois onglets : Journal, Mes liens, Flux">
    </div>
	<figcaption>
		Le nouveau menu de Flus fait la distinction entre les liens mis de côté (« Mes liens ») et les liens extérieurs (« Flux »).
	</figcaption>
</figure>

## Amélioration de l’accessibilité

J’ai rapidement évoqué des changements liés à l’accessibilité dans [un article](accessibilite.html) la semaine dernière, mais je ne vous ai pas expliqué de quoi il en retournait.

Les retours qui m’ont été faits concernaient essentiellement **deux axes liés à la navigation clavier.** Je me suis donc concentré là-dessus.

Tout d’abord, les menus « popups » étaient mal déclarés. **Cela empêchait les lecteurs d’écran d’annoncer correctement leur comportement.** Quand les menus étaient déclarés, c’était une annonce trop générique du type : « Ouvre le menu ». Ok, mais quel menu ? Je suis donc repassé sur tous les menus de Flus pour rendre leur fonctionnement explicite aux lecteurs d’écran. Petit ajout supplémentaire : ils peuvent désormais se fermer en appuyant sur la touche <kbd>échap</kbd>.

Un autre problème important concernait les erreurs au sein des formulaires : celles-ci n’étaient pas rattachées aux champs de saisie. **Une personne aveugle ne pouvait ainsi pas savoir facilement si une erreur était survenue !** J’ai fait de mon mieux pour corriger le tir, mais il me semble que ce n’est pas encore suffisant. Il me faudra organiser des tests utilisateurs pour mieux comprendre comment améliorer les choses.

## Des flux plus utiles

Flus génère des flux Atom pour les profils, les collections et les commentaires. Il y avait trois choses qui me gênaient avec ceux-ci.

Premier point, **les habitué‧es des flux <abbr>RSS</abbr> ou Atom peuvent avoir l’habitude de les trouver en ajoutant `/feed` à la fin d’une <abbr>URL</abbr>** ; c’est notamment le cas avec le flux d’un blog Wordpress. Ce n’était pas possible auparavant dans Flus, mais maintenant si !

Second point, soyons honnêtes : un flux Atom — ou <abbr>RSS</abbr> —, c’est souvent une bouillie de texte incompréhensible pour le commun des mortels. **Il est toutefois possible de les relooker, et c’est ce que fait désormais Flus pour les rendre plus abordables** (exemple avec [le flux de mon profil](https://app.flus.fr/p/1670839367044869607/feed.atom.xml)).

Dernier point, les flux n’intégraient pas les commentaires des utilisateurs et utilisatrices. Or, si quelqu’un ajoute un flux à son agrégateur, c’est probablement pour les lire. Flus se contentait jusque-là de donner les liens vers la page de commentaires et vers le site d’origine. Désormais, **il va plus loin en incluant directement les commentaires,** ce qui rend les flux bien plus utiles.

<figure>
    <div class="screenshot">
	    <img class="illustration screenshot__image" alt="Une capture d'écran du flux de mon profil ouvert dans FreshRSS, un article est ouvert est affiche un commentaire ainsi que le lien vers l’article d’origine." src="images/freshrss-flusio.png" />
    </div>
	<figcaption>
		Le flux de mon profil tel qu’il apparaît dans FreshRSS.
	</figcaption>
</figure>

## Le soin du détail

Une application de qualité prend soin des petits détails. Ça tombe bien, car je n’ai pas chômé sur le sujet !

Détail n°1 : les nouveaux utilisateurs et utilisatrices suivent désormais les flux de ce carnet et du service [status.flus.fr](https://status.flus.fr) par défaut. Ils ont également quelques signets issus du carnet. Cela permet de débuter en ayant du contenu.

Détail n°2 : Flus vous indiquait déjà d’où viennent les liens du journal (tel flux, telle collection, ou vos signets). Désormais, vous pourrez retrouver cette info un peu partout dans Flus, pratique pour retracer l’origine d’un lien !

<figure>
    <div class="screenshot">
	    <img class="illustration screenshot__image" alt="Une capture d'écran affichant 3 liens dans Flus, avec des informations indiquant via quels flux ils sont issus." src="images/flusio-via-2.png" />
    </div>
	<figcaption>
		« via… », c’est un peu l’équivalent d’un retweet (sauf que l’information n’est pas publique pour le moment).
	</figcaption>
</figure>

Détail n°3 : parfois on a plusieurs comptes sur une plateforme. Et parfois on aimerait bien en supprimer un, mais faudrait voir à pas supprimer le mauvais ! Flus vous rappelle maintenant avec quel compte vous êtes connecté‧e avant de supprimer votre compte.

Détail n°4 : la notion d’adresse ou d’URL n’est pas forcément claire pour tout le monde. Flus fait de son mieux pour accompagner ces personnes, et désormais les champs URL affichent un <i lang="en">placeholder</i> `https://…` pour leur rappeler ce qui est attendu.

<figure>
    <div class="screenshot">
	    <img class="illustration screenshot__image" alt="Une capture d'écran de la fenêtre d’ajout d’un lien affichant un champ « adresse » avec un placeholder « https:// »." src="images/flusio-new-link.png" />
    </div>
	<figcaption>
		Avec l’ajout du <i lang="en">placeholder</i>, il va devenir plus compliqué d’être plus explicite !
	</figcaption>
</figure>

## À venir

Si le mois de février a été bien chargé en nouveautés, ne vous attendez pas à ce que ce soit le cas en mars !

J’aimerais tout d’abord prendre soin de l’infrastructure technique : les services flus.fr et flus.io commençant à se marcher sur les pattes, **le second risque de déménager sur un autre serveur.**

Sur cette lignée, je vais devoir **mettre à jour le service flus.io vers la dernière version de [FreshRSS](https://freshrss.org).** Il y a eu beaucoup d’activité ces derniers mois grâce à un nouveau contributeur. La contrepartie, c’est que ça va me demander plus de temps pour vérifier que rien n’est cassé.

Je vais également avoir à préparer **ma conférence pour [les <abbr>JdLL</abbr>](https://jdll.org/)** (Journées du Logiciel Libre) qui se dérouleront à Lyon les 2 et 3 avril prochains. J’aurai l’occasion d’en reparler.

Si je suis efficace, on pourrait imaginer que je commence **à bosser sur un mécanisme de recherche au sein de Flus.** Je ne pense pas que ce soit prêt pour mars, mais ça vous donne une idée de ce à quoi je vais m’attaquer ensuite.