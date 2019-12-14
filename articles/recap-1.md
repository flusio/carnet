---
title: Récap #1 : lancement de mon activité, ouverture du service et découverte de WebSub
date: 2019-12-14 11:30
description: J’ai démarré mon activité de micro-entrepreneur début novembre et, comme je fonctionne par cycles de six semaines, j’arrive à la fin d’une première étape. C’est l’occasion de faire le point sur ce que j’ai fait ces derniers temps.
---

J’ai démarré mon activité de micro-entrepreneur début novembre et, comme je
fonctionne par cycles de six semaines, j’arrive à la fin d’une première étape.
**C’est l’occasion de faire le point sur ce que j’ai fait ces derniers temps.**
Cet article est le premier de ce qui deviendra peut-être une série si je tiens
sur la durée.

## Le 04 novembre, début officiel de mon activité

On m’a posé la question plusieurs fois de savoir comment s’était passé les
démarches administratives pour ouvrir ma micro-entreprise. J’avais eu
personnellement des retours comme quoi cela se faisait facilement, et je peux
globalement confirmer.

J’ai fait les démarches dès que je suis rentré de mon voyage en Bretagne, aux
alentours du 15 octobre. J’ai rempli le formulaire [sur guichet-entreprises.fr](https://www.guichet-entreprises.fr/fr/article/demarches-en-ligne/#Immatriculer)
(et non celui de l’Urssaf qui est une horreur). J’y avais déjà jeté un œil au
préalable et m’étais renseigné auprès de la <abbr>CCI</abbr> pour les options
dont je n’étais pas sûr. Je pense que je l’ai complété en moins de 30 minutes.
J’ai commencé à recevoir des papiers officiels le sur-lendemain de ma
déclaration et tout était en place en moins de 2 semaines.

Il y a eu un petit couac avec la banque, et un plus gros avec mon prestataire
de paiement initial ce qui a repoussé l’ouverture officielle. Rien de bien
méchant, mais j’étais un peu fâché du délai supplémentaire. J’ai [raconté tout
ça ici](micro-entrepreneur-banque-et-prestataire.html).

## Lancement public du service le 28 novembre

Si j’avais ouvert les inscriptions quelques jours auparavant, je n’ai
annoncé [l’ouverture de Flus](ouverture.html) que le 28 novembre, soit presque
4 semaines après le début de mon activité.

**La réception a été bonne, quoique assez limitée.** Je suis un peu mitigé sur le
résultat : 75 comptes créés, et 8 personnes qui ont déjà commencé à payer
(certaines avant la fin de l’échéance du premier mois gratuit, un grand merci à
vous !) C’est pas forcément énorme, mais ça reste au-dessus de mes prévisions
initiales. Ça représente plus de 200 € de chiffre d’affaires et ça compense mes
différents frais sur ce premier mois. Je ne peux pas me plaindre, pourtant
j’espérais quand même un peu plus (forcément 😊).

Je réalise concrètement que réussir à vivre de cette activité ne va pas être
une mince affaire. Je le savais déjà avant, bien sûr, mais c’est encore autre
chose en ayant les mains dans le cambouis. Je relève ce défi avec plaisir bien
évidemment et je m’éclate vraiment au quotidien, je découvre et apprend des tas
de choses. Si je pars de ma semaine-type :

- Le lundi c’est administratif, j’organise ma petite entreprise, j’archive les
  papiers, je réponds ou relance les organismes, etc. Toute une organisation
  que je n’avais pas.
- Le mardi, administration système : j’améliore mes outils existants, j’en mets
  en place de nouveaux, je fais le point sur les performances, l’espace disque
  restant (je suis large), etc. Ce que je faisais auparavant en amateur, je
  l’applique à un autre niveau désormais.
- Le mercredi, je développe. Pour l’instant beaucoup sur des outils qui me
  seront utiles et assez peu pour la communauté, mais ça devrait s’inverser et
  j’ai hâte !
- **Jeudi passion communication, sans doute là où j’ai le plus à apprendre.**
  J’essaye de publier un article ce jour-là (éventuellement écrit la veille),
  mais c’est insuffisant si je veux faire parler de moi. J’ai des pistes
  d’amélioration sans tomber dans du « _forcing_ », il faut que je les
  travaille encore.
- Le vendredi ça dépend, mais j’essaye de faire un tour dans [les tickets de
  FreshRSS](https://github.com/FreshRSS/FreshRSS/issues) voir s’il y a besoin
  d’un coup de main sur de petites tâches ou sur des choses qui trainent.

Je n’ai pas cité le support car je réponds aux demandes aussitôt que l’on me
pose une question (en tout cas dès que je suis disponible). On ne m’a pas
encore trop sollicité, mais je reste vigilant.

## Dernière semaine chargée : découverte de WebSub

Comme je l’ai indiqué en début d’article, je fonctionne par cycle de 6
semaines. J’adopte un rythme prédéterminé lors des 5 premières (la semaine-type
détaillée ci-dessus), et j’utilise la sixième pour travailler à fond sur un
sujet donné. **Cette semaine, c’était [le protocole WebSub](https://www.w3.org/TR/websub/).**

Pour comprendre ce protocole, il faut savoir qu’habituellement, un agrégateur
de flux <abbr>RSS</abbr> comme Flus / FreshRSS va questionner à intervalle
régulier (par exemple toutes les heures) les serveurs publiant du contenu, même
si rien de neuf n’a été publié. Cela induit du trafic inutile et un temps de
latence entre la publication et la réception de l’article par un lecteur.
WebSub vient se greffer au milieu de tout ça : les auteurs indiquent aux
lecteurs un serveur (hub) auquel s’abonner. Lors de la publication d’un
article, l’auteur notifie le hub, qui va lui-même envoyer ce contenu aux
lecteurs qui s’y sont abonnés.

FreshRSS supporte WebSub depuis des années (il se trouve du côté « lecteur » du
protocole), grâce au travail d’[Alkarex](https://github.com/Alkarex), mais je
n’y avais jamais trop touché. Bien que je comprisse le fonctionnement global,
tout ça restait assez nébuleux pour moi. Pourtant, il me semble qu’il s’agit de
quelque chose d’assez prometteur et j’avais envie d’en savoir plus. **Quoi de
mieux alors que de se jeter tête baissée dans la lecture des spécifications et
le développement d’un nouveau hub ?**

J’avais différents objectifs avec ce projet :

- apprendre WebSub dans le détail ;
- améliorer mon niveau en <abbr>PHP</abbr> (je me sentais rouillé et pas du
  tout à la page, en particulier concernant les tests) ;
- bidouiller un framework web de zéro (parce que pourquoi faire simple quand on
  peut faire compliqué ?)

Concernant le dernier point, j’en reparlerai peut-être un de ces jours, plus
probablement sur mon site personnel.

Au bout d’une semaine assez intense, **le résultat est [Webubbub](https://github.com/flusio/Webubbub)**
(il s’agit de lignes de code, ne cliquez pas si ça ne vous intéresse pas).
Le travail n’est pas loin d’être terminé pour avoir un hub fonctionnel et je
m’en occuperai rapidement. Concernant mes objectifs, chacun a été rempli haut
la main. J’entrevois même des usages de WebSub que je n’imaginais pas avant
(reste à trouver des cas utiles !) Il s’agit d’une technologie vraiment
intéressante pour corriger certaines limites de <abbr>RSS</abbr> et Atom **et
facile à mettre en place.** Elle me permet également d’imaginer une piste
supplémentaire pour ma stratégie de communication.

## Le récap’

En résumé de cet article, je peux dire que je suis très content d’avoir démarré
mon activité. Toutes les étapes de préparation faites en amont m’ont permis de
ne pas trop me planter pour l’instant, les quelques couacs initiaux n’étaient
pas critiques. Bref, **ça se passe bien.**

Le plus important reste que je suis à mon compte : je gère mon emploi du temps,
mes priorités, ma communication, mon travail comme et quand je l’entends. Je
peux donner un sens aux lignes de code que j’écris au quotidien, en sachant
qu’elles seront directement utiles à d’autres. Et puis j’apprends des
palanquées de nouvelles choses, c’est stimulant !
