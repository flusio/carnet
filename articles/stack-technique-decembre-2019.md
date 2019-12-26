---
title: Stack technique (décembre 2019)
date: 2019-12-20 11:30
description: Aujourd’hui, billet un peu technique. Je vous explique comment tourne le serveur de Flus. Notez que je fais évoluer l’infrastructure au fur et à mesure pour améliorer la sécurité et en fonction des besoins. Cet article sera donc vrai à un instant T mais deviendra probablement obsolète d’ici quelques semaines. Je m’engage à vous expliquer les changements survenus au minimum tous les ans.
---

Aujourd’hui, billet un peu technique. Je vous explique comment tourne le
serveur de Flus. Notez que je fais évoluer l’infrastructure au fur et à mesure
pour améliorer la sécurité et en fonction des besoins. Cet article sera donc
vrai à un instant T mais deviendra probablement obsolète d’ici quelques
semaines. **Je m’engage à vous expliquer les changements survenus au minimum
tous les ans.**

J’ai encore des tas de chantiers en cours, mais il me semble que décembre est
un bon point de repère pour faire le point sur l’existant.

## Hébergeur et serveur

J’ai fait le choix de prendre un <abbr>VPS</abbr> chez [l’hébergeur allemand
Hetzner](https://www.hetzner.com/), installé sous Debian Buster. C’est
l’hébergeur que nous utilisons à Framasoft et j’avais de bons retours dessus.
Leur interface est propre et bien plus agréable que celle d’OVH chez qui j’ai
la majorité de mes autres serveurs. Je ne voulais pas non plus mettre tous mes
œufs dans un même panier. Je n’exclus pas la possibilité de changer pour un
hébergeur plus « local » dans le futur.

Mon <abbr>VPS</abbr> est un petit [CX31](https://www.hetzner.com/cloud#pricing)
que je vais rapidement faire évoluer vers un CX41, ne serait-ce que pour
disposer de 4 <abbr>CPU</abbr>. Ceci dit, le serveur tient très bien la charge
avec seulement 10 % du <abbr>CPU</abbr> utilisé en moyenne, et ne bronche pas
même lors de la récupération des articles.

Je dispose également d’un volume supplémentaire de 500Go pour la base de
données. J’avais peur que la taille s’envole rapidement, mais elle ne fait
toujours qu’à peine 500Mo malgré plus de 100 000 articles stockés. J’ai le
temps de voir venir 😉

J’en profite pour remercier encore une fois Alkarex pour son excellent travail
et sa vigilance concernant les performances et l’optimisation de
[FreshRSS](https://freshrss.org) !

## Installation et dépendances de FreshRSS

FreshRSS ne requiert qu’assez peu de dépendances :

- un serveur web, en l’occurrence nginx ;
- le langage PHP ;
- une base de données, ici PostgreSQL ;
- un serveur de mails (j’utilise mon propre serveur sur une machine séparée,
  géré avec l’excellent [Mailu](https://mailu.io/)).

PHP et PostgreSQL sont installés avec Docker. J’ai fait ce choix à la base pour
être plus flexible quant aux numéros de versions. De plus j’avais de mauvais
souvenirs quant à la configuration de la base de données (mais ça a peut-être
évolué depuis). Enfin, j’ai pas mal utilisé Docker professionnellement, je suis
donc en terrain connu. J’envisage toutefois de m’en passer à terme pour
m’éviter une couche pas indispensable et pour simplifier la maintenance.

FreshRSS est quant à lui installé grâce à Git ce qui me simplifie grandement
les mises à jour.

## Monitoring

J’assure la surveillance du serveur de deux manières complémentaires pour
l’instant, en attendant mieux.

La première est l’outil de suivi intégré à l’interface de Hetzner qui permet de
suivre quelques métriques comme l’évolution du <abbr>CPU</abbr> et du réseau.

J’ai aussi installé [Glances](https://nicolargo.github.io/glances/) pour
avoir une meilleure vision de ce qui se passe sur le serveur (notamment pour
surveiller l’espace disque). J’ai créé un petit script Python pour m’envoyer un
courriel ainsi qu’un <abbr>SMS</abbr> en cas de problème. Ce n’est pas encore
une solution suffisante notamment parce que je n’ai pas d’historique de ces
métriques, et que si le serveur tombe, Glances devient également injoignable.
Cette solution avait toutefois l’avantage d’être très simple à mettre en place.

**J’améliorerai tout ça avec des outils plus adaptés sur un serveur séparé plus
tard.**

## Sauvegarde des données

Je paye à Hetzner un supplément de 20 % du prix initial du serveur pour qu’ils
en assurent des sauvegardes journalières. La méthode pour restaurer un backup
ne me convient guère car je suis obligé de créer une nouvelle machine pour
pouvoir accéder aux données sauvegardées. C’est du tout ou rien !

Je complète donc cette sauvegarde avec un script `rsync` sur ma machine dont le
disque est chiffré.

Ce n’est clairement pas une solution satisfaisante et **c’est mon prochain
chantier.** Je pense partir sur [Borg](https://www.borgbackup.org/), là encore
sur un serveur séparé, probablement chez un autre hébergeur.

## Divers

Ce blog, « [carnet de flus](https://flus.io/carnet) » ainsi que [la page de
statut du service](https://status.flus.io) sont des sites créés avec
mon propre générateur de sites statiques, [Boop!](https://framagit.org/marien.fressinaud/boop).
Ils sont synchronisés depuis mon PC avec `rsync`.

Le <abbr>HTTPS</abbr> de tout ce petit monde est géré avec [Certbot](https://certbot.eff.org/)
qui me génère des certificats Let’s Encrypt.

J’ai installé [Fail2Ban](https://github.com/fail2ban/fail2ban) pour mettre à la
porte les robots et autres spammeurs.

Enfin, tout ça est automatiquement déployé avec [Ansible](https://www.ansible.com/),
me permettant de documenter ce qui est installé sur mon serveur et de le
répliquer aisément ailleurs si besoin.

---

_[Flus](https://flus.io) est un service d’agrégation de l’actualité. Vous pouvez
y suivre la grande majorité des sites d’actualité, blogs et podcasts
existants._

_En prenant un abonnement à Flus, vous m’aidez à vivre de mon travail et
m’encouragez à améliorer un logiciel libre et communautaire : [FreshRSS](https://freshrss.org)._
