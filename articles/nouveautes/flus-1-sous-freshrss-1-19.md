---
title: Flus 1 sous FreshRSS 1.19
date: 2022-04-15 11:27
description: Résumé de la mise à jour de Flus 1 vers FreshRSS 1.19
---

Je ne parle généralement que du service principal de veille (à l’adresse
flus.fr), mais Flus c’est également un agrégateur de flux <abbr>RSS</abbr> plus
traditionnel qui tourne avec FreshRSS. Ce dernier est accessible à l’adresse
[flus.io](https://flus.io).

La version [1.19.0](https://github.com/FreshRSS/FreshRSS/blob/edge/CHANGELOG.md#2021-12-31-freshrss-1190)
de FreshRSS est sortie en décembre dernier, suivie de deux versions correctives
([1.19.1](https://github.com/FreshRSS/FreshRSS/blob/edge/CHANGELOG.md#2022-01-02-freshrss-1191)
et [1.19.2](https://github.com/FreshRSS/FreshRSS/blob/edge/CHANGELOG.md#2022-02-04-freshrss-1192)).
De mon côté, occupé ailleurs, j’ai un peu traîné pour faire la mise à jour.

**Mais c’est désormais fait : [flus.io](https://flus.io) tourne sous FreshRSS 1.19.2 !**

Voici quelques nouveautés :

- une option pour afficher les miniatures des articles ;
- une option pour marquer les nouveaux articles comme lus si un même titre
  existe dans les articles les plus récents ;
- une option pour ne garder qu’un nombre maximum d’articles non lus dans un
  flux donné ;
- de nombreux changements dans l’interface.

Ce n’est qu’une très courte sélection des changements apportés, je vous laisse
découvrir le reste par vous-mêmes.

---

Notez que la semaine prochaine, je déplacerai le site ainsi que FreshRSS sur un
nouveau serveur : attendez-vous à deux coupures de service le temps du
déménagement. J’annoncerai tout ça sur [status.flus.fr](https://status.flus.fr/)
et sur les réseaux sociaux quand j’aurai déterminé la date (probablement mardi
ou mercredi).
