---
title: Weeknotes #5
date: 2020-06-13 10:30
description: Semaine 1 du cycle 6. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration: images/flusio-registration.png
---

## Cycle 6&nbsp;–&nbsp;semaine 1

Je démarre un nouveau cycle, ce qui signifie pour moi que je modifie légèrement
mes méthodes de travail en tentant de les améliorer. Je tenterai ce cycle-là
d’être vigilant au temps que je passe sur le PC, ce qui peut parfois être
compliqué comme je bosse chez moi, sans séparation physique entre mon bureau et
le reste de l’appartement.

### Ce que j’ai fait

J’ai commencé à préparer la prochaine (vraie) fonctionnalité de Flus, celle
permettant de mettre des liens de côté pour les consulter plus tard. J’ai
validé quelques points techniques basiques (télécharger une page, récupérer le
titre). Pour l’instant je vais aller au plus simple.

J’ai également mis en place les premiers éléments de la charte graphique pour
être capable de vous montrer des choses rapidement. Par exemple la page
d’inscription ressemble à ça&nbsp;:

![capture d'écran montrant un formulaire permettant de s’inscrire](images/flusio-registration.png)

Elle sera encore amenée à être modifiée, mais c’est désormais montrable. J’ai
fait quelques ajustements par rapport à la charte [du site](https://flus.fr)
car les contraintes ne sont pas les mêmes entre un simple site et une
application complète (le jeu de couleurs est notamment un peu plus étoffé). Les
icônes sont issues du [projet Clarity](https://clarity.design/icons).

[Maiwann](https://www.maiwann.net/) a avancé de son côté et m’a présenté les
premières maquettes qu’elle a réalisées, je suis pressé d’implémenter tout
ça&nbsp;; ça va être bien 🙂

Du côté de FreshRSS, j’ai passé une demie-journée à corriger un bug dans la
fonction d’exportation des données. C’était l’occasion de [réécrire une
partie](https://github.com/FreshRSS/FreshRSS/pull/3045) pour rendre le tout
plus maintenable. Même si c’est pas parfait, c’est en tout cas beaucoup mieux.

### Là où j’ai pris du plaisir

J’attaque enfin une fonctionnalité qui va avoir de la valeur dans le futur
logiciel, je rentre donc dans le cœur de ce que je veux faire. Le travail de
préparation m’a permis de délimiter ce que j’allais développer dans un premier
temps&nbsp;: c’est une étape importante pour que j’évite de me disperser.

Les choses commencent à prendre forme et je pense que je mettrai une version de
démo en production juste après ça pour pouvoir effectuer des tests et obtenir
des retours le plus tôt possible.

### Ce que j’ai appris

Une question me trotte dans la tête depuis un moment&nbsp;: **est-ce que je ne
passe pas trop de temps en «&nbsp;préparation&nbsp;», au détriment de la
«&nbsp;production&nbsp;» de fonctionnalités&nbsp;?** De l’extérieur je pense
que cela donne l’impression que je n’avance pas et que je procrastine (on m’a
posé la question&nbsp;😉) Je commence à réussir à formuler des éléments de
réponse à cette question.

La première chose, c’est que je ne crois absolument pas que je procrastine.
**J’ai une véritable attente des fonctionnalités que je vais développer, et
hâte de voir l’outil être utilisé par d’autres personnes.** Il n’y a rien de
_compliqué_ dans ce que je compte faire, rien qui me pousserait à retarder le
développement des fonctions clés. En fait je crois que je me suis même
débarrassé en grande partie de ma tendance à procrastiner depuis que j’ai
développé et que j’utilise [Lessy](https://lessy.io).

La deuxième partie de la réponse est que **je compte courir un marathon, pas un
sprint.** Il y a différentes manières de développer un logiciel, mais si l’on
compte garder son code maintenable, on a intérêt à en prendre soin. Cela passe
par une réflexion sur l’architecture globale, un choix conscient des dépendances,
une vision des fonctionnalités à venir, l’écriture d’une suite de tests utiles
couvrant une bonne partie du code, etc. Tout cela prend du temps, mais me
permettra de faciliter l’évolution du logiciel dans les années à venir.

_J’ai assez donné dans le logiciel écrit en urgence._

Je crois toutefois que je vais écrire une feuille de route pour donner une
meilleure visibilité de ce que je compte proposer.
