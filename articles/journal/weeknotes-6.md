---
title: Weeknotes #6
date: 2020-06-22 11:23
description: Semaine 2 du cycle 6. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration: images/flusio-signets-1.png
---

## Cycle 6&nbsp;–&nbsp;semaine 2

### Ce que j’ai fait

La semaine dernière a été chargée avec de grosses journées de travail, j’y
reviens plus bas. J’ai principalement développé la fonctionnalité d’ajout de
liens dans une collection par défaut, les « signets ». Cela permettra de mettre
de côté les liens que l’on souhaite garder sous le coude, pour les lire dans
les jours qui viennent par exemple. L’interface n’est en rien définitive et les
choses bougeront dans les jours/semaines à venir, mais voilà à quoi ça
ressemble dans l’immédiat :

![capture d'écran montrant des blocs représentant les liens et affichant le titre des pages externes, un formulaire est présent pour ajouter un nouveau lien](images/flusio-signets-1.png)

Enfin des choses à montrer ! 😄

Je me suis basé sur les maquettes suivantes (réalisées par [Maiwann](https://www.maiwann.net/)) :

![capture d'écran montrant la page mobile de la collection « À lire » avec deux liens sous forme de blocs](images/flusio-maquettes/3_a_lire.png){.illustration .illustration--centered}

![capture d'écran montrant la page mobile d’un lien spécifique avec son titre, durée de lecture, collections associées](images/flusio-maquettes/11_lien.png){.illustration .illustration--centered}

Des choses ont changé depuis ces maquettes (la collection « À lire » par
exemple est devenue « Signets »), d’autres sont manquantes et il s’agit de
maquettes de la vue mobile. **Il y a de bonnes chances pour que les choses
évoluent encore pas mal d’ici l’automne** ; ne vous attachez donc pas trop à ce
que vous voyez ici. Je vous montre cela seulement pour présenter l’avancement
et pour pouvoir comparer plus tard ce qui était prévu de ce qui sera
réellement. Je vais avancer par itérations en vérifiant à chaque étape que le
tout est effectivement utilisable.

### Là où j’ai pris du plaisir

Recevoir les maquettes dans un premier temps, puis les voir prendre « vie » est
toujours un chouette moment. J’ai pris soin de commencer par une fonctionnalité
dont j’ai besoin pour _me_ mettre une première version en production dans les
prochains jours. **Dans le même temps j’ouvrirai une instance de démo pour que
vous puissiez tester en parallèle.**

Un aspect technique que j’ai apprécié est la partie permettant de [récupérer le
titre des pages](https://github.com/flusio/flusio/blob/main/src/Links.php#L331-L347).
Je voyais bien comment faire, mais je me demandais quelle serait la façon à la
fois la plus propre et la plus simple. J’essaye de garder tout cela [à part de
la base de code principale](https://github.com/flusio/flusio/tree/main/lib/SpiderBits)
pour en faire une bibliothèque séparée et réutilisable.

La partie dont je suis le plus content est celle qui extrait le titre du
<abbr title="Document Object Model">DOM</abbr>. J’avais un peu joué avec la
classe <abbr>PHP</abbr> [`DOMDocument`](https://www.php.net/manual/class.domdocument.php)
il y a longtemps, j’avais oublié à quel point elle était pénible à utiliser.
Heureusement, grâce au langage [XPath](http://schlitt.info/opensource/blog/0704_xpath.html),
j’ai pu créer [un petit <em lang="en">wrapper</em>](https://github.com/flusio/flusio/blob/main/lib/SpiderBits/src/Dom.php)
d’une centaine de lignes (commentaires inclus) qui rend le tout beaucoup plus
simple. Il me sera bien évidemment utile dans d’autres circonstances.

### Ce qui m’a questionné

J’ai fait de grosses journées toute la semaine dernière, ce qui a cassé un peu
mon rythme de vie habituel. Je m’autorise de telles semaines de temps en temps,
en particulier quand je veux voir quelque chose avancer d’une traite. **Il est
toutefois clair que ce n’est pas un rythme soutenable pour trouver un équilibre
entre vie pro et vie perso.**

Je me revois en train de donner un « coup de collier » de façon bien plus
fréquente quand je bossais en entreprise sur des projets clients qui ne
m’intéressaient pas. À l’époque ça ne me paraissait pas totalement « anormal »
(sans être non plus vraiment « normal ») ; il y avait un côté « loyauté » à
faire ça pour « enthousiasmer le client ». Ça m’attriste à la fois pour le
temps perso que j’ai perdu, et ça m’interroge sur le manque de cadre et de
protection que l’on peut parfois avoir en entreprise. Je me rends compte
aujourd’hui à quel point la balance peut être déséquilibrée, et j’y étais
jusque-là aveugle.

Je suis content d’être désormais à mon compte, et heureux de ne pas m’imposer
un rythme infernal seulement pour faire plaisir à d’autres, même si cela ne me
permet pas (encore) d’en vivre.
