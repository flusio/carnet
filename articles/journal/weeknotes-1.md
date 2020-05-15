---
title: Weeknotes #1
date: 2020-05-15 18:45
description: Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail sur flus.fr. Semaine 4 du cycle 5.
---

J’ai commencé à rédiger des notes personnelles de façon quasi (bi)hebdomadaire
sur mon propre site il y a quelque temps et je me suis rendu compte de deux
choses&nbsp;:

1. j’y parle beaucoup de Flus (forcément…)&nbsp;;
2. et ces notes auraient toute leur place ici.

Je vais donc désormais prendre le temps de raconter les dessous de la
conception de Flus de façon hebdomadaire (ou presque) ici même. C’était en
vérité l’objet même de ce carnet de flus dès son origine, mais il faut croire
que je me suis un peu égaré en chemin en abordant de moins en moins le
«&nbsp;faire&nbsp;».

Il y a des chances également que ce soit le format que je privilégie ces
prochaines semaines car il me demande moins de temps pour rédiger (environ 1h
contre au moins une journée pour certains articles). Le format
«&nbsp;récap’&nbsp;» risque de sauter également car je ne le trouve pas si
intéressant que ça, surtout depuis que [je publie mon chiffre d’affaires en
temps réel](https://flus.fr/financement).

Bienvenue donc dans cette Weeknotes #1.

---

## Cycle 5&nbsp;–&nbsp;semaine 4

### Ce que j’ai fait

Il y a 2 semaines, j’ai créé le dépôt de code du logiciel qui se trouvera
derrière le service&nbsp;; le logiciel sera «&nbsp;[flusio](https://github.com/flusio/flusio)&nbsp;»,
le service «&nbsp;[flus.fr](https://flus.fr)&nbsp;».

Une fois la base technique choisie et mise en place la semaine dernière, j’ai
pu commencer à développer la fonctionnalité d’inscription. Je m’étais donné 2
semaines, mais il m’aura fallu 3 jours pour faire l’essentiel. Je ne me fais
pas d’illusion, j’aurai bien besoin des jours restants pour finaliser la
fonctionnalité, même en me contentant du strict minimum en termes de CSS que je
ne veux aborder que plus tard.

Pris dans l’enthousiasme de ce début de projet (j’y reviens plus bas), j’ai eu
du mal à m’arrêter de bosser certains soirs. J’ai finalement lâché prise en
m’autorisant à faire ces «&nbsp;heures supplémentaires&nbsp;», mais en
m’imposant une demi-journée hier matin pour aller me balader. Meilleure
décision.

Aujourd’hui j’ai passé ma journée pour travailler sur FreshRSS. J’avais prévu
de reprendre l’interface d’ajout des moyens de partage pour le rendre plus
clair, mais je me suis rendu compte que les fichiers de traduction étaient sens
dessus-dessous. J’ai donc pris la matinée pour tout [remettre d’aplomb](https://github.com/FreshRSS/FreshRSS/pull/2976)
et [mettre à jour la documentation](https://github.com/FreshRSS/FreshRSS/pull/2978).
La première partie a été intégrée, il me reste à prendre en compte les
corrections de Frenzie concernant la documentation.

### Là où j’ai pris du plaisir

Le démarrage d’un nouveau projet est toujours super enthousiasmant pour moi.
Même si j’ai tendance à ne pas aimer parler «&nbsp;technique&nbsp;» avec
d’autres développeurs, ça reste quelque chose dans lequel je m’éclate. J’ai
vraiment l’impression de mettre en œuvre tout ce que j’ai pu apprendre par
le passé, tout en le faisant _exactement_ à ma sauce. C’est lorsque j’ai
«&nbsp;refactorisé&nbsp;» les tests et que j’ai résolu chacun des problèmes qui
me chagrinaient jusque-là que j’ai réalisé que l’architecture choisie me
convenait de façon impeccable.

Je me rends également compte que j’apprécie écrire de la documentation, même si
je fais vraisemblablement encore pas mal de fautes en anglais (j’ai bon espoir
que ça passe inaperçu pour la plupart des francophones 😁). J’ai plus de mal à
relire un texte que j’ai écrit en anglais qu’en français. Tout ça pour dire que
flusio devrait bénéficier d’une documentation préparée aux petits oignons.

### Ce qui m’a chagriné

Il est compliqué d’avancer correctement à la fois sur du développement, de
l’administration système, de la communication, etc. Bosser seul ainsi n’est
vraiment pas aisé et comme je veux sortir une version beta pour l’automne, ça
me donne des excuses pour faire ce que je préfère (le développement de flusio).

Je note donc depuis quelques jours les différents sujets qu’il faudrait que
j’aborde à plus ou moins long terme. Ça va de «&nbsp;entériner ma candidature
[CHATONS](https://chatons.org/)&nbsp;» à des choses beaucoup plus techniques et
pointues. Certaines choses auraient du sens à être rendues publiques, je
réfléchis à comment publier cette liste.

Je vais utiliser ma sixième et dernière semaine de cycle pour essayer d’abattre
un maximum de choses, mais j’envisage de m’octroyer 1 semaine supplémentaire si
des choses essentielles me semblent encore manquer.

Dernière chose&nbsp;: mes journées sont si denses que j’ai du mal à passer à
autre chose. Mon cerveau continue de vagabonder longtemps après que j’ai lâché
l’ordinateur en continuant de réfléchir à ce que je pourrais développer. Des
pauses s’imposent.

### Ce que j’ai découvert

Je connaissais déjà [Turbolinks](https://github.com/turbolinks/turbolinks) (qui
donne une sensation de navigation plus fluide) grâce à [Rails](https://rubyonrails.org/),
mais je ne l’avais jamais mis en place moi-même et je ne m’étais pas penché
dessus plus que ça. Ça s’est révélé super facile à configurer, même s’il faut
faire gaffe à quelques détails.

J’ai découvert par contre l’extension [Wave](https://wave.webaim.org/) pour
navigateurs. Elle permet d’analyser les problèmes d’accessibilité d’une page.
Je compte bien l’utiliser intensivement à l’avenir, en conjonction du système
d’audit intégré dans les outils de développement de Chromium, [Lighthouse](https://developers.google.com/web/tools/lighthouse/)
(dommage que celui-ci ne fonctionne pas dans Firefox également…)
