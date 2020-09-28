---
title: Découvrabilité et nouvelle version – Weeknotes #15 (cycle 8)
date: 2020-09-28 17:00
description: La semaine dernière a marqué l’arrivée de beaucoup de fonctionnalités dans Flus et d’une nouvelle version.
illustration:images/flusio-collections-discover.png
---

La semaine dernière a été une semaine où j’ai été particulièrement efficace et
où les lignes de code se sont écrites quasiment toutes seules :

- développement de la fonctionnalité des thématiques (évoquée dans la
  [Weeknotes #13](weeknotes-13.html)) ;
- ajout de centres d’intérêt pour les utilisateur‧ices ;
- ajout de suggestions de lecture dans le journal, basé sur les centres
  d’intérêt et les thématiques ;
- ajout d’une page pour découvrir les collections publiques créées par la
  communauté ;
- et des améliorations et corrections dans tous les sens.

Cela m’a donc permis de sortir une nouvelle version (la [v0.9](https://github.com/flusio/flusio/releases/tag/v0.9),
déjà !) qui a pour objectif d’améliorer la façon de découvrir du contenu sur
Flus. Comme d’habitude, je me suis contenté de développer en allant au plus
simple, ce qui me permettra d’améliorer plus facilement les fonctionnalités
dans le futur.

La version [de démo](https://demo.flus.fr/login) est à jour, mais comme il
n’y existe qu’un seul utilisateur et aucune thématique (la base de données est
vidée chaque nuit, ça demanderait un peu plus de boulot pour les recréer à
chaque fois), ces ajouts n’y sont malheureusement pas visibles. Je vous ai
toutefois fait une vidéo rapide pour illustrer le fonctionnement :

<video controls class="illustration illustration--bordered">
    <source src="videos/flusio-news-topics-1.webm" type="video/webm">
    <source src="videos/flusio-news-topics-1.mp4" type="video/mp4">
</video>

Ce qu’il s’y passe :

1. L’utilisatrice « Kiki » crée une collection publique associée à la
   thématique « Culture » et y ajoute un lien, lui aussi public ;
2. L’utilisateur « Marien » qui a indiqué être intéressé par la thématique
   « Culture » demande de nouvelles suggestions de lecture ;
3. Comme il ne lui a pas encore été suggéré, le lien ajouté par Kiki est ajouté
   à son journal.

Pour ce qui est de la découverte des collections publiques, il s’agit d’une
simple page qui ne demande qu’à s’étoffer :

![Une page listant 5 collections créées par différents utilisateurs et utilisatrices](images/flusio-collections-discover.png){.illustration .illustration--bordered}

J’ai ensuite commencé à travailler sur la configuration du journal vendredi.
Les choses devraient bien avancer cette semaine, j’espère même terminer le
processus d’« <em lang="en">onboarding</em> ». Avec cela j’aurai enfin un
ensemble de fonctionnalités cohérentes entre elles, ce qui pourra marquer le
début des tests utilisateurs.

J’ai également listé très précisément ce que je voulais avoir pour décembre et
l’ouverture de la bêta. C’est assez frustrant parce que je vais me passer de
certaines fonctionnalités qui pourraient donner une toute autre dimension à Flus,
mais mon temps est limité et je préfère arrondir les angles pour les premiers
utilisateur‧ices. Ce n’est que partie remise !
