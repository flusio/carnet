---
title: Bonnes nouvelles (Weeknotes #22)
date: 2021-01-15 15:36
description: Cette semaine, j’aligne les bonnes nouvelles.
illustration: images/cpu-avant-apres-docker.png
---

Cette semaine a été pleine de bonnes nouvelles.

**La première est que l’extension navigateur est désormais disponible à la fois
sur [Firefox](https://addons.mozilla.org/fr/firefox/addon/flus/) (c’était déjà
le cas) et [Chrome](https://chrome.google.com/webstore/detail/flus/gikjpohbbimicecbndkefebbpjobokjd).**
Je m’attendais à plus de problèmes avec ce dernier, mais après avoir soumis
l’extension à nouveau au Web Store, elle a été rapidement acceptée. Le fait
qu’elle soit simple a dû jouer en sa faveur. Je vais maintenant pouvoir mettre
à jour l’interface de Flus pour lister les deux versions.

La deuxième bonne nouvelle (pour moi) est **la suppression de Docker de
l’infrastructure.** Je l’avais mis en place parce que ça me simplifiait la vie
d’un point de vue déploiement automatique. En pratique, Docker me posait trop
de soucis en production (comme les mises à jour des images à faire à part ou
l’indirection pour exécuter les commandes). Ça me permet de simplifier la stack
technique, ce n’est pas plus mal. J’ai détaillé toute la procédure [dans un
billet de maintenance](https://status.flus.io/2021-01-12-bye-bye-docker.html).

La troisième bonne nouvelle est la conséquence directe de la précédente. **La
charge <abbr>CPU</abbr> a immédiatement chuté après la suppression de Docker.**
Je vous laisse juge :

![Graphe de la charge CPU avec de très nombreux pics à 100% qui s’aplatit subitement aux alentours de 5%](images/cpu-avant-apres-docker.png){.illustration.illustration--bordered}

La quatrième plus ou moins bonne nouvelle va vous paraître bizarre. J’ai
découvert fin décembre que pour acheter ou vendre des services à des
entreprises de l’Union Européenne, même en tant que micro-entreprise, il y a
des démarches particulières à faire. La première est de demander un numéro de
<abbr>TVA</abbr> intracommunautaire (qui ne me fait pas perdre le bénéfice de
la franchise). Ensuite, il me faudra déclarer mes ventes auprès des douanes et
déclarer la <abbr>TVA</abbr> sur mes achats intracommunautaires (i.e. la
location du serveur en Allemagne). Vous allez dire que cette « bonne » nouvelle
a tout l’air d’en être une « super mauvaise ». C’est parce que la bonne
nouvelle est la suivante : j’ai appelé le service des impôts, ils semblent
encore moins au courant que moi de ce dispositif. Ouais, j’avais prévenu que
c’était bizarre, **mais ça me rassure de me dire que je ne suis pas le seul à
être largué dans cette affaire.** Histoire à suivre, je ferai sans doute un
article pour expliquer toutes mes démarches.

La dernière bonne nouvelle : j’ai enfin pris le temps de rédiger un article que
je voulais faire depuis l’ouverture de Flus 2. Il est prêt à être publié lundi.
Je suis content d’arriver à varier les <em lang="en">weeknotes</em> avec
d’autres types d’articles.

En alignant tout ça, **j’ai l’impression de reprendre pied dans la pagaille que
je décrivais dans [les <em lang="en">weeknotes</em>](weeknotes-21.html) de
début de semaine.** C’est peut-être celle-là, la dernière bonne nouvelle.
