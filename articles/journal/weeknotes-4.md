---
title: Weeknotes #4
date: 2020-06-08 12:40
description: Semaine 7 du cycle 5. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration: images/taust-server.png
---

## Cycle 5&nbsp;–&nbsp;semaine 7 (bonus)

Mes cycles de travail font généralement 6 semaines, dont la dernière est dédiée
à des activités qui sortent de mon quotidien. Je n’ai pas eu le temps de faire
tout ce que je voulais faire [la semaine précédente](weeknotes-3.html) et je me
suis donc octroyé une semaine supplémentaire. Il s’agissait aussi d’une
expérience pour tester un rythme différent, mais je ne pense pas que ça soit
une bonne idée&nbsp;: il me faut absolument avancer sur le service en lui-même.

### Ce que j’ai fait

Comme je l’avais évoqué [la fois précédente](weeknotes-3.html), j’ai développé
un système simple de monitoring que j’ai nommé [taust](https://github.com/flusio/taust).
Il fait le strict minimum pour l’instant (monitoring de la mémoire, des CPU,
des disques et succès de requêtes HTTPS). J’ai plein d’idées de choses à lui
ajouter… mais évidemment plus tard. Attention&nbsp;: je ne prévois pas
d’assurer de support dessus, il s’agit d’un projet qui n’a pas l’ambition de
devenir communautaire et je n’ai pas de temps à lui accorder dans l’immédiat.

Ça ressemble à ça&nbsp;:

![Capture d'écran de taust montrant les métriques principales du serveur « localhost » ainsi que des alarmes associées](images/taust-server.png)

Dans un autre domaine, [Maiwann](https://www.maiwann.net/) a commencé à m’aider
sur la future interface de [flusio](https://github.com/flusio/flusio). Elle a
forcément plein de questions et ça me fait bizarre de poser mes réponses à
l’écrit, comme le sentiment de graver des choses dans le marbre. Mais peut-être
aussi un peu le sentiment que ça avance malgré le fait que je n’ai pas bossé
dessus la semaine dernière&nbsp;?

### Ce qui m’a chagriné

Le fait de parler de taust sur les réseaux sociaux semble avoir soulevé quelques
incompréhensions vis-à-vis de mes priorités (i.e. ne devrais-je pas me
contenter d’installer un outil déjà existant et me concentrer sur le
développement de [flusio](https://github.com/flusio/flusio) ?) La question est
légitime et je tiens à (re)préciser certaines choses&nbsp;:

- j’ai pris soin de limiter ce développement dans le temps (1 semaine, ce qui
  correspond grosso-modo au temps que m’avait pris [Netdata](https://www.netdata.cloud/)
  la fois d’avant, avec un niveau de maitrise moindre)&nbsp;;
- le monitoring m’est indispensable pour proposer un service de qualité&nbsp;;
- maitriser pleinement la gestion des outils que j’utilise m’apporte une
  sérénité d’esprit bien plus élevée que des outils certes plus complets, mais
  dont je ne comprends pas le fonctionnement&nbsp;;
- je ne suis pas fan de l’expression « réinventer la roue », j’ai plutôt le
  sentiment d’en fabriquer une.

À part ça, le fait que la banque m’ait prélevé 5,90&nbsp;€ sans que je
comprenne pourquoi me fait dire que je vais encore m’amuser (non).

### Là où j’ai pris du plaisir

Il y a un côté grisant à développer un outil de A à Z en une semaine avec sa
propre identité visuelle. Les finitions et la qualité du code sont forcément
moindres que ce que je prévois pour flusio, mais ça fait du bien de vérifier
que je suis capable d’adapter mon rythme de développement au contexte dans
lequel je me trouve.
