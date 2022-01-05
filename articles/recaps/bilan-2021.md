---
title: Bilan 2021
date: 2022-01-05 17:30
description: Retour sur la deuxième année de Flus
---

Comme [l’an dernier](bilan-2020.html), je partage ici le bilan de mon année à propos de Flus. Celui-ci abordera trois aspects : **la conception de l’outil, le bilan financier et la communication autour du projet.**

Pour rappel, Flus est une plateforme de veille 3-en-1 qui regroupe un agrégateur de flux RSS, du <i lang="en">bookmarking</i> et du partage de veille. Tout cela s’articule autour du journal, un espace qui permet de suivre l’actualité sans se retrouver submergé par la quantité d’informations. Je travaille sur ce projet à plein temps depuis fin 2019.

## Conception et développement

Le développement du logiciel — [flusio](https://github.com/flusio/flusio) — qui se trouve derrière Flus a débuté en 2020. Cette année-là, j’ai mis en place toute la base technique et les premières fonctionnalités indispensables. **2021 devait donc me permettre de faire monter l’application en puissance.** Par bien des aspects, c’est ce qu’il s’est passé, mais pas tout à fait comme je m’y attendais.

**La fonctionnalité phare de l’année a été l’ajout du support des flux <abbr>RSS</abbr>.** En s’articulant avec le journal — à la place d’une file interminable d’articles —, j’ai fait le pari que l’outil serait plus agréable à utiliser au quotidien. Fini la charge mentale des articles non lus qui s’entassent à l’infini ! Cela ne s’est pas fait sans difficulté car il a fallu repenser beaucoup de mécanismes existants — le journal et les collections notamment — et, aujourd’hui encore, il y a des adaptations nécessaires. Heureusement, je peux toujours compter sur l’aide précieuse en <i lang="en">UX design</i> de [Maiwann](https://maiwann.net).

Mais alors que je pensais pouvoir faire plus d’ajouts fonctionnels, **mes efforts se sont portés sur des aspects beaucoup plus techniques.** J’ai dû notamment écrire tout le mécanisme qui récupère les flux <abbr>RSS</abbr> de manière asynchrone à partir de zéro. J’aurais pu me baser sur des outils existants pour aller plus vite, mais j’ai fait le choix d’une moindre dépendance à des outils externes pour gagner en maintenabilité du code. Enfin, une bonne partie de la seconde moitié de l’année a été dédiée à l’amélioration des performances et à la gestion des ressources. Gérer 200 utilisateurices n’est pas tout à fait la même chose qu’en gérer 3 500.

Désormais, le gros du boulot technique est derrière moi : il reste de petites choses à faire, mais je n’ai plus besoin de m’en soucier autant qu’avant.

## Finances

En quelques chiffres, voici comment s’est réparti mon chiffre d’affaires (<abbr>CA</abbr>) cette année :

- 110 abonnements annuels pour 3 300 € de <abbr>CA</abbr> ;
- 124 abonnements mensuels pour 372 € de <abbr>CA</abbr> ;
- 16 contributions à [la cagnotte](https://flus.fr/cagnotte) pour un total de 419 € (soit 26 € en moyenne).

**Le <abbr>CA</abbr> total s’élève ainsi à 4 091 €, soit une augmentation de 92 % par rapport à 2020 !** Je remercie d’ailleurs celles et ceux qui ont participé à cette nette hausse.

Comparé à l’année précédente, mes dépenses fixes ont peu bougé : 45,96 € par mois pour le serveur, 30,99 € par mois pour la mutuelle et 29,40 € par trimestre pour la banque. Les frais de Stripe, mon prestataire de paiement, s’élèvent à 120 € sur l’année. **Je me suis également versé mon premier salaire annuel à hauteur de 1 600 € et cotisé 708 €.** Ajoutez à ça quelques dépenses occasionnelles et vous obtenez un total des charges de 4 015 €. Mon résultat s’élève ainsi à 76 €, mais ce chiffre est peu intéressant.

Cette année encore, l’évolution du <abbr>CA</abbr> n’a pas du tout été linéaire :

<figure>
    <img alt="Graphique de mon chiffre d’affaires 2021 : 285 € (janvier), 274 € (février), 171 € (mars), 198 € (avril), 267  € (mai), 663 € (juin), 384 € (juillet), 289 € (août), 582 € (septembre), 360 € (octobre), 234 € (novembre) et 384 € (décembre)" src="images/bilans/2021-evolution-ca.png" class="illustration illustration--figure illustration--bordered" />
    <figcaption>
        Évolution de mon <abbr>CA</abbr> durant l’année 2021 dessinant un « M » comme la première lettre de mon prénom ; probablement pas un hasard.
    </figcaption>
</figure>

Le pic de juin correspond à l’annonce de l’ajout [des flux <abbr>RSS</abbr> dans Flus](des-flux-pour-tout-le-monde.html). Celui de septembre correspond quant à lui à la parution de [la vidéo de Science Étonnante évoquant Flus](https://www.youtube.com/watch?v=Sm_FgccC9dk), séparé du premier mois gratuit pour les nouveaux et nouvelles inscrites. Chose intéressante, ce dernier pic m’a apporté une hausse notable des abonnements mensuels réguliers, signifiant pour moi l’utilité de l’outil.

À noter que malgré la hausse importante de mon <abbr>CA</abbr>, je reste loin de mon objectif financier de 10 000 €.

## Communication

Le succès de Flus repose en bonne partie sur ma capacité à le faire connaître. Bien que la communication soit au cœur du projet depuis le début, j’ai pu déplorer plusieurs fois un certain manque de compétences dans le domaine. En fait, ce qu’il me manquait plus certainement, **c’était une stratégie globale plus ambitieuse.**

Le carnet sur lequel vous vous trouvez a par exemple toujours été tenu avec soin. En 2021, j’ai d’ailleurs rédigé 35 articles (2 de moins qu’en 2020) et j’ai espoir d’atteindre la centaine — au total — en 2022 ! Ma présence sur les réseaux sociaux se développe également à son rythme. Il y a sans doute un petit manque de régularité de ma part, mais rien d’insurmontable avec un peu de préparation.

**Mais finalement, j’ai dû mesurer le gap entre mes efforts actuels et ceux que je devais mettre en place pour atteindre la rentabilité.** Toute la fin de l’année a été passée sur l’élaboration d’une stratégie de communication reposant sur quelques points : une publication hebdomadaire d’articles, une activité accrue sur les réseaux sociaux incluant désormais LinkedIn et ma participation à des conférences tout au long de l’année. Surtout, cela s’accompagne d’un changement de cible puisqu’il me faudra désormais viser des entreprises, plus sujettes à payer pour un service en ligne que des particuliers.

_Ou… pas ?_ Il faut bien reconnaître que rien de tout cela ne m’emballe. À force de lire le gros document rédigé, accompagné de son calendrier de publications, j’ai réalisé que, non, ce n’était pas ce que j’avais envie de faire. **Alors, fin décembre, j’ai fait un pas de côté. J’ai abandonné la voie « logique » qui devait faire de Flus un projet rentable rapidement et j’en ai choisi une autre qui comblera mieux mes aspirations.**

## Conclusion

En préambule à cette conclusion, je tiens tout d’abord à rassurer sur mon fort attachement à Flus. C’est le projet le plus abouti sur lequel j’ai travaillé et je suis très fier d’en être arrivé là où j’en suis. **De plus, je trouve qu’il est toujours aussi important de proposer un outil de veille en ligne différent, conçu avant tout pour ne pas nous noyer sous l’information.** Ainsi, je compte bien continuer de travailler sur Flus en 2022 !

Toutefois, il y a une inadéquation entre mes objectifs financiers — qui se feront de plus en plus pressants au fil de l’année — et l’énergie que je suis prêt à mettre dans la communication pour me faire connaître. Plutôt que de partir dans une direction qui ne me plaît pas, j’ai donc décidé de faire « autrement ». **C’est pourquoi, en 2022, je vais chercher un travail à temps partiel pour compléter mes revenus.** Idéalement, j’aimerais continuer à consacrer au moins 3 jours de travail par semaine à Flus. Je pourrai ainsi me concentrer sur la conception de l’outil en ayant moins de pression du côté de la communication. Je serai également moins soumis à une pression de rentabilité et pourrai ainsi me faire plaisir sur d’éventuelles fonctionnalités expérimentales :). Concernant le job complémentaire, je détaillerai bientôt sur mon blog personnel ce que je recherche.

**Ainsi, 2022 devrait être l’année de la stabilité économique… bien que ce ne soit pas tout à fait ainsi que je l’imaginais ! C’est en tout cas pour moi l’assurance de pouvoir continuer à travailler sereinement sur le projet et un moyen de financer du logiciel libre. C’est pas si mal :)**