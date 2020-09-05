---
title: La FAQ du un an
date: 2020-09-05 17:45
description: Un an de carnet et plus de 30 articles publiés, c’est pas mal. Pour fêter ça je réponds aux (quelques) questions que vous vous posiez.
tags: featured

J’ai profité de fêter la première année du carnet pour demander si vous aviez
des questions concernant mon activité. J’ai peut-être eu moins de questions que
ce que j’espérais, mais j’en ai quand même eu quelques-unes, alors **un grand
merci à celleux qui ont pris le temps de me les poser !**

Concernant le futur service :

> Est-ce que ça sera un système que chacune pourra installer chez soi ? Si oui,
> est-ce qu’il y’aura un système de fédération ?

Alors évidemment il s’agit de logiciel libre, donc n’importe qui (avec les
compétences) pourra l’installer chez lui, [la documentation est d’ailleurs déjà
là](https://github.com/flusio/flusio/blob/main/docs/production.md). Il s’agit
d’un logiciel en <abbr>PHP</abbr> avec aussi peu de dépendances que possible.
Par contre la seule base de données supportée est PostgreSQL et je ne prévois
pas d’en supporter d’autres.

Pour ce qui est de la fédération, j’imagine qu’il faut l’entendre au sens
« [ActivityPub](https://fr.wikipedia.org/wiki/ActivityPub) ». La réponse est
non, ce n’est pas prévu pour l’instant. **Par contre, Flus sera capable (plus
tard) de lire et générer des flux <abbr>RSS</abbr> qui lui permettront de
« dialoguer » avec d’autres outils.**

> Dans flus, est-ce qu’il est possible d’avoir des suggestions de lecture
> venant d’autres utilisateurs de manière aléatoire ? Ou c’est forcément via
> nos signets ?

C’est très exactement ce sur quoi je bosse en ce moment. **Le principe du
journal est de proposer le contenu le plus pertinent possible en se basant sur
des critères paramétrables et une part de hasard.** Les liens étaient jusque-là
uniquement tirés des signets (c’est-à-dire les liens qu’on a explicitement
marqués à lire plus tard), mais j’ai ajouté cette semaine le suivi de
collections créées par d’autres utilisateur‧ices. À terme il sera également
possible d’obtenir des suggestions depuis l’ensemble des liens enregistrés sur
la plateforme.

Voici également quelques-uns des critères que j’ai déjà imaginés :

- privilégier les liens venant des signets/collections suivies ;
- privilégier les liens venant de sources qui publient peu/beaucoup ;
- privilégier les liens qui apparaissent dans plusieurs des collections que je
  suis ;
- privilégier les liens les plus récents/anciens ;
- exclure les liens plus anciens que 1 jour/semaine/mois ;
- sélectionner des thèmes à afficher/masquer.

Rien n’est totalement arrêté pour l’instant, mais cela devrait déjà donner une
idée des possibilités qu’offrira le journal.

> &gt; « <abbr>AKA</abbr> » pour « <em lang="en">Ask Me Anything</em> »
> Ça ne serait pas plutôt <abbr>AMA</abbr> ?

Oui 😛

> Ce sera basé sur FreshRSS ?

Non, pas du tout et d’ailleurs j’ai déjà [écrit un article pour expliquer
ça](flus-et-freshrss.html).

Par contre, j’essaye de garder séparé dans le code ce qui pourrait être, à
terme, utile à FreshRSS.

> Est-ce que le service qui utilise FreshRSS sera maintenu ?

Je m’engage effectivement à maintenir ce service tant qu’il y aura des
utilisateur‧ices et que je suis en capacité financière de le gérer. Pas
question de faire une Google et de mettre à la porte les personnes qui
l’utilisent parce que j’en ai marre. En revanche je me laisse la possibilité de
bloquer les inscriptions une fois le nouveau service ouvert (ce qui n’est pas
encore acté).

> Quels conseils tu donnerais à quelqu’un qui voudrait faire de même ?

J’ai déjà abordé quelques conseils dans [mon article publié en début
d’après-midi](comment-je-nai-pas-encore-fait-fortune-en-1-an.html), mais c’est
l’occasion de faire le point.

**Premièrement, avoir un revenu à côté pour que le lancement de son activité ne
soit pas un problème pour sa survie me semble important.** De fait ça ne me
semble malheureusement pas accessible à tout le monde. Dans les options que
j’ai pu identifier, le chômage, le mi-temps, un 80% ou un petit boulot à côté
me semblent envisageables… tout dépend de ses propres opportunités. On peut
aussi militer pour le salaire à vie, mais ce chemin me semble plus ardu.

Ensuite, comme évoqué également dans l’article, **s’organiser de façon à ne
pas se laisser bouffer son temps libre et prendre soin de soi.** Quand je me
suis mis à mon compte, c’était pour ne pas reproduire les problèmes que j’avais
pu rencontrer en tant que salarié donc <em lang="en">exit</em> les journées à
rallonge. Concrètement, je me suis donné des horaires 9h – 12h puis 14h – 18h
tout en restant flexible (c’est pas un drame de commencer à 10h ni de finir à
18h30). Je suis assez flexible concernant le travail en weekend. Généralement
il s’agit d’écrire un article le samedi matin, mais ça ne doit jamais venir
empiéter sur une autre activité que j’aurais pu faire à la place. Aujourd’hui
étant exceptionnel 😅

Lié à l’organisation du temps, je conseille de bloquer une demi-journée par
semaine pour faire de l’administratif, répondre aux courriels, relancer les
organismes pour lesquels on est en attente, ranger l’environnement dans lequel
on bosse, etc. Même si on n’utilise pas la demi-journée complète, au moins **on
se cale l’habitude de traiter les choses qui ont tendance à traîner.**

J’ajouterais ensuite de **ne pas sous-estimer les domaines que l’on ne connait
pas / dans lesquels on est moins bon, ni le temps nécessaire pour leur
apprentissage.** Pour ma part je sais que je pêche en communication et je
commence seulement à voir plus clair dans les manières de me faire connaître à
plus large échelle. J’espère mieux m’en sortir au lancement de la prochaine
version !

**Il faut aussi savoir se détacher des échecs et difficultés.** Ce n’est pas
toujours rigolo de se dire que son chiffre d’affaires ne décolle pas, pourtant
je n’oublie pas de me rappeler que ça ne fait pas encore un an que je me suis
lancé. Ce n’est pas une situation très étonnante quand on y réfléchit. Sans
oublier qu’une bonne part de la réussite est lié à la chance, pas uniquement à
nos choix. Si ça marche pas, tant pis, je me serai amusé !

Enfin, dernier point, il faut essayer de **s’entourer de personnes avec des
compétences divers qui pourront porter un regard critique sur votre travail**,
et éventuellement pourront contribuer de leurs commentaires et conseils. Pour
ma part, j’ai la chance de faire partie de l’association Framasoft et donc de
bénéficier de regards à la fois bienveillants et acérés. Sans compter les
ami‧es qui suivent le projet de plus ou moins loin qui, au détour d’une
conversation, peuvent m’aider. Enfin, je n’oublie pas [Maiwann](https://www.maiwann.net/)
qui m’est d’une aide précieuse sur l’interface et avec qui j’ai fait un échange
de compétences pour qu’elle puisse libérer un peu de temps pour moi.

Avec ça, il me semble avoir fait le tour des conseils que j’avais à donner sur
le sujet, et aussi des questions qui m’ont été posées. Encore merci aux
personnes qui ont pris le temps de les poser !
