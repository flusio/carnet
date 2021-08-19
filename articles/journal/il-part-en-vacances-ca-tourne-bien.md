---
title: Les plans pour fin 2021
date: 2021-08-05 11:49
description: Les vacances, c’est fini. Qu’est-ce qu’il s’est passé penant ce temps et quels sont mes plans pour la fin de l’année ?
---

Les vacances, c’est fini. Ce mois de juillet dans le calme de la Creuse m’a fait le plus grand bien et j’ai pu me ressourcer pour reprendre avec plaisir le boulot lundi dernier.

Pas mal de choses se sont passées malgré tout pendant mes vacances. Korben a commencé par parler de flusio — le logiciel derrière Flus — [sur son blog](https://korben.info/organiser-veille-flusio.html), puis ça a été le tour de David Louapre de parler de Flus [sur sa chaîne Youtube, Science Étonnante](https://www.youtube.com/watch?v=Sm_FgccC9dk). **Le résultat a été fulgurant puisque, de moins de 500 utilisateurs fin juin, je suis passé à plus de 2 500 en ce début de mois d’août.** Une belle progression et un grand merci à eux !

C’était l’occasion de tester les limites de Flus. On approche désormais des 10 000 flux suivis et des 750 000 liens enregistrés en base de données. Ça ne vous parle peut-être pas beaucoup, mais ça représente beaucoup de requêtes envoyées vers des sites externes ; il faut arriver à suivre le rythme ! Et là, je dois bien avouer que Flus commence à atteindre ses limites. Le serveur peine depuis quelques semaines à synchroniser les liens ; vous l’avez d’ailleurs peut-être remarqué ? **Ça va être la première tâche à laquelle je vais m’atteler ces prochains jours : être plus intelligent et efficace lors de la synchronisation des liens.**

Il y a eu dans le même temps une hausse sensible de messages sur le support : rien d’insurmontable et beaucoup de remerciements, ça fait plaisir ! On m’a également remonté deux problèmes de sécurité à faible risque : ils sont corrigés et j’ai fait l’annonce sur le site [status.flus.io](https://status.flus.io/2021-08-04-correction-problemes-securite.html). J’en ai profité hier pour sortir une nouvelle version corrigeant plusieurs détails ([voir sur GitHub](https://github.com/flusio/flusio/releases/tag/v0.28), en anglais).

Mes priorités suivantes porteront à la fois sur les fonctionnalités qui m’ont été les plus demandées et sur la stabilisation de l’existant. Au menu :

- la possibilité de retrouver les liens marqués comme lus ;
- exporter et importer vos données ;
- améliorer la cohérence du mécanisme lu/non-lu ;
- une meilleure gestion des temps de lecture ;
- configurer le journal pour le rendre plus flexible ;
- ajouter un mécanisme de recherche des liens et collections.

**Enfin, la dernière grande fonctionnalité à laquelle je vais devoir m’atteler est celle de la veille à plusieurs.** C’est dans mes plans depuis le début, mais il m’a fallu faire des choix et je l’ai repoussée plusieurs fois. J’aimerais toutefois m’y atteler d’ici la fin de l’année.

Bref, des tas de choses à faire ! Je n’ai, par ailleurs, pas évoqué le travail que je compte faire [sur le site](https://flus.fr), ni celui sur l’extension. Je n’aurai clairement pas le temps de faire tout ceci d’ici la fin de l’année ; voyez plutôt ça comme une direction que j’emprunte.

**Je termine cet article pour vous remercier toutes et tous pour vos retours, pour vos encouragements, vos idées et pour me remonter les bugs que vous rencontrez.** Je vous suis extrêmement reconnaissant et je mesure avec plaisir l’évolution positive empruntée par Flus depuis [la sortie de décembre](https://flus.fr/carnet/flus-beta.html). Il m’arrive encore parfois de douter de ce que j’ai entrepris avec ce projet, mais il me suffit de relire vos messages pour me rappeler que… bah ouais, en fait, c’est (pas ?!) super Flus 😊
