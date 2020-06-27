---
title: Weeknotes #7
date: 2020-06-27 15:55
description: Semaine 3 du cycle 6. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration: images/flusio-link-1.png
---

## Cycle 6&nbsp;–&nbsp;semaine 3

### Ce que j’ai fait

J’ai fini de fignoler la fonctionnalité des signets [commencée la semaine
dernière](weeknotes-6.html). Tout était déjà « fonctionnel », mais je devais
désormais placer les boutons et les liens aux bons endroits, rendre cohérent et
facile le parcours utilisateur et corriger quelques bugs. Je voulais également
ajouter un système de cache basique pour éviter de multiplier les requêtes vers
l’extérieur quand flusio récupère le titre des articles. Certaines pages sont
encore bien vides, mais elles s’étofferont au fur et à mesure.

![capture d’écran montrant la page d’un lien](images/flusio-link-1.png)

Tout fonctionne désormais bien, même si des choses changeront sans doute. Il
s’agit maintenant de tester. Pour faciliter ça, **j’ai donc ouvert une instance
de démo, accessible à l’adresse [demo.flus.fr](https://demo.flus.fr).** Les
données seront supprimées chaque nuit, donc assurez-vous de ne rien mettre
dedans qui serait important !

Vous le verrez, la démo est assez limitée pour l’instant. flusio peut tout au
plus remplacer vos onglets de navigateur pour stocker les liens vers les
articles et vidéos que vous souhaitez consulter plus tard. Vous pourrez
néanmoins pouvoir juger du look (bien que des choses évolueront) et de la
_réactivité_ de l’interface (😍).

### Ce qui m’a chagriné

Il y a un détail que je n’avais pas saisi dans la gestion des sessions PHP.
S’il est possible d’allonger la durée de validité d’un cookie de session, la
session elle-même (côté serveur) peut être réinitialisée avant cela (sans doute
en partie car stockée par défaut dans le répertoire `/tmp` qui est, par
définition, temporaire). La [documentation PHP](https://www.php.net/manual/fr/book.session.php)
n’est pas clair sur le fonctionnement et il semblerait qu’il y ait des
considérations supplémentaires à prendre en compte concernant [la
sécurité](https://www.php.net/manual/fr/session.security.php).

Il est donc bien nécessaire de créer un mécanisme supplémentaire pour gérer les
sessions qui doivent persister plusieurs jours. Heureusement, le système que
j’ai mis en place devrait être facilement adaptable et ne devrait pas
nécessiter plus d’une journée de travail.

### Ce qui arrive ensuite

Je n’aurai que 3 jours de travail la semaine prochaine, donc je vais en
profiter pour corriger quelques petits trucs que j’ai repérés ou que l’on m’a
déjà remontés. Je vais également peaufiner le système de déploiement et de mise
à jour pour automatiser au maximum.

Après cela, j’attaquerai la seconde fonctionnalité qui consistera à pouvoir
**placer les liens dans différentes collections thématiques.** Cela permettra
de commencer à pouvoir les archiver pour pouvoir les retrouver facilement plus
tard. C’est une fonctionnalité que j’attends personnellement avec impatience.

Je songe également à poser au propre quelques processus, notamment pour pouvoir
réagir rapidement en cas de détection d’une attaque ou pour pouvoir remettre en
place une sauvegarde des données en cas de perte. **Je n’ai pas envie de me
retrouver à inventer ces processus le jour où un problème surviendra.**
