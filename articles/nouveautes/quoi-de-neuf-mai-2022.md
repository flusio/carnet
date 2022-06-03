---
title: Quoi de neuf en mai
date: 2022-06-03 19:11
description: Résumé du mois de mai pour Flus : recherche, Markdown, Debian 11 et… un mi-temps !
illustration: images/flusio-search-4.png
---

## Retrouvez vos liens

**La grande nouveauté du mois de mai est le système de recherche.** C’était l’une des fonctionnalités les plus attendues et elle est d’ors et déjà disponible.

Le champ de recherche se trouve sous l’onglet « Mes liens » et vous permet de retrouver tous les liens correspondant à un ensemble de mots, ou une <abbr>URL</abbr>. À noter que vous ne pouvez rechercher que vos propres liens (ce qui inclue vos liens « lus »).

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-search-4.png" alt="La page de résultats pour la recherche « quoi de neuf ». On y voit 3 liens sur les 13 résultats.">
    </div>
	<figcaption>
		Le champ de recherche vous permet de retrouver des liens que vous avez ajoutés, mais que vous ne retrouvez plus.
	</figcaption>
</figure>

La grande difficulté a été de trouver où placer ce champ de recherche. Je l’ai longtemps imaginé à la place ou à côté du bouton « Nouveau » dans la barre principale, ce qui posait beaucoup d’autres questions. Finalement la solution est venue naturellement en discutant avec Maiwann et en simplifiant l’ambition de cette fonctionnalité.

## Du Markdown pour les champs libres

J’aime pouvoir mettre en forme un minimum le texte que je rédige. Jusque-là, Flus se contentait d’afficher du texte brut, mais j’avais l’intention d’aller plus loin.

Un premier pas a été franchi puisque **vous pouvez désormais rédiger les descriptions de vos collections, ainsi que vos commentaires en Markdown.**

Le Markdown permet de formater votre texte de façon simple et relativement naturelle. Pour mettre en gras, par exemple, vous pouvez entourer un ensemble de mots de doubles astérisques (ex. `**ce texte sera en gras**`). Vous pouvez en apprendre plus sur Markdown [grâce à ce guide](https://flus.fr/carnet/markdown.html). Attention, le format est volontairement restreint dans Flus : pas de titre, ni d’image ou de tableau notamment !

Je me suis contenté du strict minimum pour l’instant, il n’y a même pas d’aide visuelle pour vous guider. Le but est juste de permettre à celles et ceux qui le souhaiteraient de pouvoir égayer un peu leur texte. J’améliorerai l’ergonomie dans le futur.

## Des améliorations en vrac

Une page « À propos » [a fait son apparition dans Flus](https://app.flus.fr/about). Jusque-là, je me contentais d’un lien vers flus.fr. L’avantage est que je dispose maintenant directement dans le logiciel d’une page traduite en anglais et en français pour afficher les informations et les crédits importants.

J’ai revu le message prévenant lorsque le journal n’a plus rien à vous proposer. Le but était de le rendre plus visuel et qu’on comprenne mieux que ce n’était pas un état « normal ». Il est aussi plus cohérent avec les messages d’erreurs ou de succès.

J’ai sensiblement amélioré les performances de la page « Flux » pour les personnes qui suivent de nombreux flux. Ça devenait pénible pour moi d’ouvrir cette page.

## Mise à jour vers Debian 11 (Bullseye)

Le système de recherche m’a un peu forcé la main pour mettre à jour le serveur `faremis` (celui qui héberge app.flus.fr) vers la dernière version de Debian.

Non pas que je ne souhaitais pas la faire, mais ça ne faisait pas partie de mes priorités. La recherche dépend cependant d’une fonctionnalité de PostgreSQL 12, et j’étais bloqué à la 11.

La mise à jour [ne s’est pas passé exactement comme je l’espérais](https://status.flus.fr/a/1733630713450655375), mais a fini par fonctionner.

Je dispose désormais de PHP 7.4 et PostgreSQL 13, qui sont les nouvelles versions minimales officiellement supportées par [flusio](https://github.com/flusio/flusio), le logiciel derrière Flus.

## Passage à mi-temps

Mon mois de mai a également été marqué par des entretiens passés avec [la SCOP Probesys](https://www.probesys.com/). Celle-ci m’a proposé un poste qui correspondait très bien à ce que je sais et ce que j’ai envie de faire. Ils ont accepté de m’embaucher à mi-temps et je commence mardi prochain si tout va bien.

Ce mi-temps va me permettre de continuer de travailler sur Flus une semaine sur deux. J’aurai donc théoriquement un peu moins de temps à consacrer au projet, mais j’aurai également l’esprit plus tranquille :)

À noter que je travaillerai tout le mois de juin chez Probesys histoire de faire connaissance avec mes nouveaux et nouvelles collègues. Il n’y aura donc probablement pas de « quoi de neuf » à la fin du mois.

## À venir

La recherche étant terminée, je vais commencer à me pencher sur le partage de collections afin de pouvoir alimenter une veille à plusieurs. Je m’attends à ce que ça soulève des problèmes, donc ne vous attendez pas à voir la fonctionnalité arriver tout de suite !

Avant ça, j’ai de nouveau des soucis de performance à plusieurs endroits de l’application à corriger. Ces problèmes sont liés au nombre de liens stockés en base de données, mais j’ai déjà plusieurs pistes pour améliorer les choses. La plus intéressante consiste à revoir comment sont stockées les <abbr>URL</abbr> en base de données, autant dire que ce n’est pas un changement anodin.

J’ai également des idées pour améliorer sensiblement l’ergonomie autour des liens. Tout reste à tester !