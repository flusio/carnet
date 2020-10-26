---
title: Identifiants et images (Weeknotes #19)
date: 2020-10-26 12:00
description: La semaine dernière a vu l’amélioration de plusieurs petites choses, l’ajout d’un formulaire pour modifier ses identifiants de connexion et le support des illustrations pour les liens.
illustration: images/flusio-collection-images.png
---

**La semaine dernière a vu l’amélioration de plusieurs petites choses, l’ajout
d’un formulaire pour modifier ses identifiants de connexion et le support des
illustrations pour les liens** (via le protocole [Open Graph](https://ogp.me/)).
Je vous fais un petit tour de l’ensemble.

## Détails

Parmi ce qui pourrait être perçu comme du détail, j’ai :

- simplifié et harmonisé les URL de différentes pages (identifiants uniquement
  numériques, regroupement de pages sous un chemin `/my` commun) ;
- réorganisé le menu présent derrière l’image « avatar » ;
- amélioré la récupération des titres des pages (ça fait plusieurs fois que je
  fais ça, désormais ça me semble plutôt bien robuste) ;
- homogénéisé la casse des titres (certains étaient entièrement en minuscules,
  d’autres gardaient leur casse d’origine) ;
- caché la présence d’un bouton de retour sur les pages publiques (perturbant
  quand on nous a partagé un lien et qu’on arrive directement sur cette page) ;
- aligné la hauteur des boutons avec celle des champs texte (il y avait 2
  pixels de différence !) ;
- etc.

Je parle de « détails », mais **il s’agit pour moi d’éléments qui soulignent le
soin que je veux apporter à Flus.** J’y tiens énormément et c’est d’ailleurs
dans ce genre de corrections mineures que je prends le plus de plaisir.

## Identifiants

La réorganisation du menu était quelque chose que je voulais faire depuis un
moment, mais c’est l’ajout du formulaire pour modifier les identifiants de
connexion qui m’en a donné l’occasion.

![Capture d’écran montrant le formulaire avec deux champs courriel et nouveau mot de passe, le menu « avatar » est ouvert et affiche les entrées « Profil », « Identifiants & sécurité » et « Compte & abonnement »](images/flusio-login-and-security.png){.illustration .illustration--bordered}

Cette fonctionnalité aurait pu voir le jour bien plus tôt, mais j’avais préféré
me concentrer sur le cœur de Flus. **Ça me paraissait toutefois important de
pouvoir changer son adresse courriel ainsi que son mot de passe pour la sortie
en décembre 😉**

## Images

J’hésitais à développer dès maintenant la récupération automatique des images
d’illustration. **Cependant, l’un des retours que j’ai eu la semaine dernière
était que l’interface était trop austère**, ce dont j’avais bien conscience.
J’avais besoin d’une confirmation pour remonter ça dans mes priorités. Les
images devraient donner un peu plus de couleurs à Flus. Le résultat est le
suivant :

<figure>
    <img alt="Capture d’écran montrant un ensemble de liens illustrés par les images récupérées par Open Graph" src="images/flusio-collection-images.png" class="illustration illustration--figure illustration--bordered" />
    <figcaption>
        Sélection de musiques issues de quelques jeux vidéos,
        <a href="https://app.flus.fr/collections/1672354633238832183">la collection
        est publique</a> si vous en voulez plus (mais les illustrations ne sont
        pas encore là et c’est bien dommage).
    </figcaption>
</figure>

Sous le capot, ça télécharge l’image déclarée par la balise [Open Graph](https://ogp.me)
correspondante (ou [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards)),
la redimensionne et tronque au bon format, puis la stocke sur le serveur.
C’était assez peu rigolo à faire parce que manipuler des images en <abbr>PHP</abbr>
est une horreur, mais ça rend beaucoup mieux qu’avant ! Il me reste encore des
choses à faire (comme récupérer les images des liens que j’ai déjà mis sur la
plateforme), mais ça devrait être fini d’ici demain.
