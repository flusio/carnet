---
title: Weeknotes #3
date: 2020-05-30 12:00
description: Semaine 6 du cycle 5. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
---

## Cycle 5&nbsp;–&nbsp;semaine 6

### Ce que j’ai fait

Cette semaine je me suis occupé de toutes les petites tâches que j’avais
laissées de côté pendant le cycle. À vrai dire ce fut une semaine plutôt
tranquille parce que j’ai pas mal gambadé à droite à gauche, mais c’est aussi
le but de cette semaine de pause que de m’aérer l’esprit.

En début de semaine, j’ai commencé par remettre sur pied mon document de suivi
de la trésorerie. C’était globalement bon, mais les dépenses étaient mal
reflétées (genre ma banque me facture tous les 3 mois et non tous les mois).
J’avais également des écarts de quelques centimes certains mois (des histoires
d’arrondis).

J’ai continué sur un plan plus technique en ajoutant 2 formulaires de
contact&nbsp;:

- l’un directement dans [FreshRSS](https://rss.flus.fr), via un menu
  «&nbsp;Aide et support&nbsp;»&nbsp;;
- l’autre [sur le site](https://flus.fr/contact), accessible à tout le monde.

La section «&nbsp;Aide et support&nbsp;» sera sans doute amenée à évoluer dans
le futur, mais je tenais à ce qu’il y ait au moins un moyen de me contacter
évident.

J’ai ensuite revu [la page d’accueil du carnet](https://flus.fr/carnet/) pour
ne plus avoir cette ribambelle d’articles les uns à la suite des autres. Je
n’affiche désormais plus que la date et le titre des articles, ce qui permet
d’avoir une vue d’ensemble. Certains articles importants sont également mis en
évidence. J’en ai profité pour compter&nbsp;: cet article est le 25<sup>e</sup>
du carnet&nbsp;!

L’une des tâches qui trainait depuis un moment était l’officialisation de ma
candidature pour rejoindre le collectif [CHATONS](https://chatons.org). Eh bien
j’ai raté le coche de quelques jours pour [la prochaine portée](https://forum.chatons.org/t/lancement-de-lanalyse-des-candidatures-pour-la-10eme-portee/1223).
C’est pas dramatique et ça me laissera le temps de corriger quelques petits
détails (surtout améliorer l’information publique concernant mon infrastructure
technique).

Ça m’a donc libéré un peu de temps pour imaginer différents scénarios futures
pour Flus. J’ai abordé deux questions&nbsp;:

1. quels plans si je ne m’en sors pas financièrement&nbsp;?
2. quelles actions et objectifs en fonction de différents scénarios liés à la
   notoriété du service&nbsp;?

Cet exercice m’aura permis de me projeter un peu mieux dans l’avenir&nbsp;; je
suis plus serein.

J’ai terminé la semaine en me lançant sur un gros morceau&nbsp;: finaliser la
configuration du _monitoring_ de mon infrastructure. Au tout début, j’avais
commencé par installer [Glances](https://nicolargo.github.io/glances/) qui
était un peu trop limité à mon goût. C’est pourquoi depuis quelques mois
j’utilise [Netdata](https://www.netdata.cloud/). Problème&nbsp;: ça surveille
littéralement **tout**. Je me perds complètement dans les graphiques, c’est une
horreur. De plus je me fais spammer de SMS toutes les nuits parce qu’il se met
à jour tout seul (comportement voulu à la base) et qu’il bouffe tout le CPU et
la mémoire. Bref, pas très content du résultat.

De plus, j’ai horreur de ne pas maîtriser les outils que j’héberge sur mon
infrastructure et je sais à peu près ce que je veux surveiller. Par conséquent…
j’ai décidé de développer un outil minimaliste pour assurer le monitoring et la
métrologie de mes serveurs 🙃. Je me donne pour ça une semaine supplémentaire
pour être en mesure de surveiller la présence de sites en ligne, ainsi que la
mémoire, le CPU et l’espace disque utilisés par mes serveurs. L’outil
consistera en une application PHP ([taust](https://github.com/flusio/taust)) et
une application cliente en Python pour faire remonter les métriques. Le premier
système d’alerte sera minimaliste mais pourra me remonter les erreurs par
courriel et par SMS. Le but&nbsp;: que ce soit simple à installer et à
configurer, tout en faisant exactement ce que je souhaite. On n’est jamais
aussi bien servi que par soi-même.

### Là où j’ai pris du plaisir

Démarrer un nouveau projet (taust donc) sur la base de mon framework
[Minz](https://github.com/flusio/Minz/) a été hyper rapide. J’avais en une
demi-heure quelque chose qui tourne avec un serveur PostgreSQL et un
environnement de développement facile à mettre en place. Moins d’une heure plus
tard j’étais en mesure de créer des utilisateurs et de les
connecter/déconnecter. Et ce matin en environ une heure j’étais capable de
surveiller des noms de domaine sur leur port <abbr>HTTPS</abbr>. C’est super
agréable de bosser de façon aussi efficace. C’est le 5e projet que je démarre
avec ce framework, il a atteint un bon niveau de maturité… j’imagine que je
pourrai bientôt en parler un peu plus&nbsp;😉

Sur un autre plan, je suis content d’avoir préparé des scénarios pour
«&nbsp;prévoir&nbsp;» l’avenir de Flus, c’était un chouette exercice pas prise
de tête. Je ne sais pas encore si je les rendrai publics, ça demanderait
d’expliquer un peu plus le contexte.

Je suis quand même bien content d’avoir fait toutes ces petites choses qui
trainaient depuis plusieurs semaines, voire mois. C’est un poids en moins sur
les épaules. Même s’il me reste des choses à faire, elles sont beaucoup moins
pressantes.

### Ce qui m’a chagriné

Rien&nbsp;!

### Ce que j’ai découvert

Il existe une bibliothèque Python qui fait exactement ce que je veux pour
récupérer les métriques d’un serveur&nbsp;: [psutil](https://pypi.org/project/psutil/).
C’est en fait ce qu’utilise Glances que j’ai évoqué plus haut. Ça ne devrait
donc être l’affaire que de quelques heures pour être en mesure d’envoyer les
métriques vers taust.
