---
title: Importation et UX (Weeknotes #23)
date: 2021-01-22 18:49
description: Semaine passée à préparer l’importation de données et corriger des détails d’UX et UI. Tranquille.
---

Cette semaine a été consacrée principalement à deux choses.

Premièrement, j’ai commencé un travail préliminaire concernant l’importation de
données. J’ai regardé ce qu’il était possible de faire principalement depuis
[Pocket](https://getpocket.com/). Quelques questions se posent, mais je
pourrais avoir une version fonctionnelle assez facilement. **J’ai créé [un
questionnaire](https://framaforms.org/flus-vos-attentes-vis-a-vis-de-limport-de-donnees-1611137038)
pour mieux comprendre les attentes autour de cette fonctionnalité**, n’hésitez
pas à y répondre si vous utilisez un service pour gérer votre veille en ligne.

Deuxièmement, j’ai pris le temps de faire les corrections <abbr>UX</abbr> et
<abbr>UI</abbr> évoquées dans mes [<em lang="en">Weeknotes</em> #21](weeknotes-21.html).
Ça simplifie énormément de choses tout en rendant l’interface plus jolie, je
suis très content du résultat ! Je pense mettre tout ça en production la
semaine prochaine, ne vous éloignez pas trop.

À côté de ça, j’ai passé ma matinée de mardi à comprendre pourquoi [Certbot](https://certbot.eff.org/)
refusait de renouveler le certificat <abbr>HTTPS</abbr> de mon serveur de
mails. Il s’est avéré que j’avais mal configuré l’<abbr>IPv6</abbr> et que
Certbot ne passe pas en <abbr>IPv4</abbr> si une erreur survient dans le
premier cas. Une fois compris l’erreur, la correction a été rapide.

Enfin j’ai fait du tri dans les « étiquettes » de mes tickets. Je reviendrai
sans doute un jour sur l’organisation de mon <em lang="en">backlog</em> et de
mon tableau Kanban tellement ça m’a soulagé d’un poids en ce début d’année.
