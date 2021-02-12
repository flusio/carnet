---
title: Pocket (Weeknotes #25)
date: 2021-02-12 19:05
description: Cette semaine a été passée à bosser sur l’importation des données depuis Pocket, c’est quasiment terminé !
illustration: images/flusio-pocket.png
---

Semaine très orientée « technique ». La seconde phase du système d’importation
des données depuis Pocket est quasiment terminée, mais ça m’a pris un peu plus
de temps que prévu. J’avais découpé cette fonctionnalité en trois lots.

La première, purement technique, consistait à ajouter un système de « jobs
asynchrones ». J’en ai parlé dans [la weeknote précédente](weeknotes-24.html).
J’ai terminé ce premier lot lundi.

Le second lot consiste à ajouter la connexion à Pocket, puis l’importation des
données. **C’est le plus gros morceau que j’ai presque terminé ce soir.** Il
reste toutefois des bricoles à terminer.

Le dernier lot consistera à ajouter des options (par exemple pour importer les
tags Pocket comme des collections dans Flus). Ça devrait pouvoir être fait
rapidement.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-pocket.png" alt="Bouton invitant à importer les données depuis Pocket">
    </div>

    <figcaption>
        La page d’importation devrait ressembler à peu près à ça… avec des
        options en plus !
    </figcaption>
</figure>

**Le reste de cette weeknote est relativement technique, vous pouvez vous arrêter
là si ça ne vous intéresse pas 🙂**

Chose que je n’avais pas prévue : j’ai passé une grosse journée à réorganiser
le code existant. Il s’agissait de revoir la façon de charger et enregistrer
les données en base ; très critique donc. La façon précédente était lourdingue
et rendait le code compliqué à lire et écrire. **Ça faisait longtemps que ça me
dérangeait, mais je n’avais pas encore trouvé une manière élégante de répondre
à mon problème.** C’est maintenant chose faite ! Ce n’était pas absolument
nécessaire pour la fonctionnalité d’importation, mais ça m’a permis d’écrire du
code plus élégant. Au total, ça fait 300 lignes de code en moins grâce à une
petite classe qui intègre un peu de magie, tout en restant très lisible.

Sur la partie « importation », le plus intéressant a été de réfléchir à comment
gérer beaucoup de données en gardant des performances correctes. En bossant
sur [FreshRSS](https://freshrss.org), j’ai appris qu’il était très facile de
plomber des performances en important les articles un par un. L’approche pour
régler ce problème consiste à insérer l’ensemble des données en un seul appel à
la base de données. Dans le cas de l’importation des liens depuis Pocket, mon
approche naïve initiale m’a d’abord fait insérer les liens un par un, au fur et
à mesure que je les parcourais. Cependant, le nombre de requêtes aurait été
dépendant du nombre de liens à importer (pour 2 000 liens, on serait à au moins
4 000 requêtes… bof quoi). **La solution consiste à créer un grand tableau
contenant les données des liens, puis un second avec les relations entre les
liens et les collections.** Je me contente ainsi de deux appels à la base pour
insérer les données (un pour chaque tableau). Reste à voir ce que ça donne en
situation réelle 😉
