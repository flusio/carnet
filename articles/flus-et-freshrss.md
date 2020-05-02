---
title: Flus et FreshRSS
date: 2020-05-06 15:00
description: On m’a déjà posé la question plusieurs fois : la future version de Flus reposera-t-elle sur FreshRSS ?
illustration: illustrations/logo-freshrss.png
---

On m’a déjà posé la question plusieurs fois&nbsp;: **la future version de Flus
reposera-t-elle sur FreshRSS&nbsp;?** Pour rappel, [FreshRSS](https://freshrss.org/)
est un agrégateur de flux RSS en ligne que j’avais commencé à développer alors
que j’étais étudiant. C’est le service principal que je propose actuellement à
l’adresse [rss.flus.fr](https://rss.flus.fr) afin de me rémunérer. Si j’ai bien
évidemment envisagé initialement que mon futur service ([annoncé dans cet
article](flus-media-social-citoyen.html)) continue de reposer sur FreshRSS,
j’ai peu à peu été amené à douter de la faisabilité.

![](illustrations/logo-freshrss.png){.illustration .illustration--centered}

**Ainsi, le code de cette nouvelle plateforme sera écrit de zéro, et non pas
basé sur celui de FreshRSS.** J’ai longtemps cru que cela serait possible, mais
j’en suis arrivé à la conclusion que cela me demanderait trop d’efforts. La
base des fonctionnalités étant fondamentalement différente –&nbsp;l’agrégation
de flux n’étant plus qu’une part relativement mineure du futur outil&nbsp;–,
cela ne serait même pas forcément bénéfique à FreshRSS qui devrait emprunter
dès lors une voie différente sous ma seule pression. En démarrant un nouveau
projet, je m’offre énormément de libertés dans les choix techniques que je vais
être amené à prendre, ce qui me permettra d’avancer plus vite. Cela sera aussi
l’occasion de mettre en application toute l’expérience professionnelle que j’ai
acquise ces dernières années.

Bien sûr, je m’étais engagé à contribuer à FreshRSS à travers mon activité et
rassurez-vous, ce sera toujours le cas&nbsp;! **Premièrement, je ne fermerai
pas le service actuel tant que quelqu’un·e l’utilisera[^1].** Par conséquent je
vais être amené à maintenir cette instance et donc continuer à travailler
dessus&nbsp;; j’y consacre pour le moment deux demi-journées par semaine.
Deuxièmement, je ferai également en sorte que le code que je développe dans le
cadre de Flus puisse être bénéfique aux deux projets autant que faire se peut.
J’imagine assez aisément quelques briques qui pourraient être communes.

[^1]: Les nouvelles inscriptions pourront en revanche être bloquées à terme
  lorsque j’aurai ouvert la nouvelle plateforme. Cela n’est toutefois pas acté
  et ne se fera pas dans la précipitation.

Il serait infiniment égoïste de ma part d’avoir bénéficié de ce projet
–&nbsp;certes initié par moi-même&nbsp;– pour lancer mon activité, et de ne pas
lui rendre la pareille. **Flus et FreshRSS feront par ailleurs partie d’un
même écosystème, et les améliorations faites sur l’un bénéficieront
mécaniquement à l’autre**, ne serait-ce que par un accroissement du nombre
global d’utilisateurs et d’utilisatrices. Je précise également que Flus sera en
mesure de générer des flux <abbr>RSS</abbr> à partir des listes thématiques, et
probablement d’autres choses&nbsp;: tout cela pourra donc être lu naturellement
depuis FreshRSS. Les deux seront complémentaires en s’adressant à des publics
différents.

Le code du futur logiciel sera bien évidemment libre, sous la même licence
<abbr>AGPL</abbr> 3, et utilisera le même langage principal, <abbr>PHP</abbr>.
J’aurai l’occasion de revenir sur les technologies utilisées dans un prochain
article.

**Pour terminer, je rappelle que Flus est mon activité à plein temps et que je
compte pouvoir en vivre.** Vous pouvez en apprendre plus sur le futur service
que je développe [avec cet article](flus-media-social-citoyen.html) et, si cela
vous intéresse, vous pouvez soit prendre [un abonnement sur Flus 1](https://rss.flus.fr/),
soit [participer à la cagnotte commune](https://flus.fr/cagnotte). Vous
m’aiderez ainsi à m’assurer un revenu stable.
