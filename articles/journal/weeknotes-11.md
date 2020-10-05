---
title: Weeknotes #11
date: 2020-08-29 09:50
description: Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
illustration: images/flusio-news-adding-modal.png
---

_**Edit:** Je me rends compte que ça fait déjà un an que je blogue la
progression de mon activité dans ce carnet. Je me dis qu’il serait intéressant
que le prochain article fasse le point sur cette année bien remplie pour moi.
Ce serait aussi l’occasion de faire un <abbr>DMCQVV</abbr> (« Demandez-Moi Ce
Que Vous Voulez », bon ça sonne mieux en anglais, « <abbr lang="en">AMA</abbr> »
pour « <span lang="en">Ask Me Anything</span> »).
**Si vous avez des questions que vous aimeriez me poser, vous pouvez le faire sur
les réseaux sociaux ou [par message](https://flus.fr/contact)**, je tenterai
d’y répondre dans l’article de la semaine prochaine !_

---

La reprise a été efficace cette semaine avec le début d’une large amélioration
du système du journal. On a pris le temps de s’appeler avec [Maiwann](https://www.maiwann.net/)
parce que je n’arrivais pas à bien concevoir le _workflow_ principal. Elle a
réussi à me débloquer sur plusieurs points que j’avais identifiés et même
permis d’imaginer des améliorations au-delà.

Le principe du journal est de se voir proposer une liste de liens à consulter
provenant de ses propres signets, mais aussi de collections suivies chez
d’autres personnes et de suggestions. Tout cela sera évidemment paramétrable,
comme promis depuis le début.

Lorsqu’on se retrouve face à un lien, trois cas peuvent se présenter :

1. on n’a pas envie de lire car ça n’a pas l’air intéressant ; il faut pouvoir
   retirer ce lien du journal pour qu’il ne nous soit plus proposé.
2. le lien a l’air intéressant, mais on n’a pas l’envie immédiate de le
   consulter ; il faut également pouvoir le retirer du journal, tout en le
   plaçant dans nos signets pour qu’il nous soit proposé à nouveau plus tard.
3. le lien a l’air intéressant et on veut donc le consulter immédiatement.

Dans cette dernière situation, deux cas se présentent encore :

1. le lien n’était finalement pas intéressant, on se retrouve dans le premier
   cas : on veut simplement le retirer du journal.
2. on veut mettre le lien de côté en le plaçant dans l’une de nos collections
   et éventuellement le commenter.

Sans oublier l’ajout d’informations contextuelles (pour indiquer d’où
provient le lien notamment) ; j’avais donc un peu de mal à représenter tout ça
dans l’interface sans la surcharger. L’aide de Maiwann a donc vraiment été
précieuse sur cette partie. Après un peu de boulot, voilà à quoi ressemble le
_workflow_ principal :

<video controls class="illustration illustration--bordered">
    <source src="videos/flusio-workflow-1.webm" type="video/webm">
    <source src="videos/flusio-workflow-1.mp4" type="video/mp4">
</video>

Avec ça, vous devriez avoir une meilleure vue d’ensemble d’à quoi Flus
ressemblera, même si beaucoup de choses vont encore bouger d’ici la sortie de
la bêta.

L’ajout de la fenêtre modale était particulièrement intéressant à faire car
j’ai appris comment faire en sorte qu’elle soit accessible. J’avais toujours
développé ce genre de composant un peu à l’arrache, c’était l’occasion de bien
faire. Je recommande d’ailleurs la lecture de [cet article de JoliCode](https://jolicode.com/blog/une-fenetre-modale-accessible).
Il me reste encore quelques petites choses à améliorer – notamment la
navigation au clavier avec la touche <kbd>tab</kbd> – mais ce ne sont plus que
des détails.

Je finirai tout ça la semaine prochaine. J’espère également pouvoir ajouter le
suivi des collections externes pour sortir une nouvelle version avec beaucoup
de nouveautés avant la fin de la semaine.
